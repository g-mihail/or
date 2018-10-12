package com.vebinar.controller;

import com.vebinar.dto.PaginationDate;
import com.vebinar.entity.Filter;
import com.vebinar.entity.Order;
import com.vebinar.entity.Status;
import com.vebinar.service.OrderService;
import com.vebinar.utils.ListandCount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/mng")
@PreAuthorize("hasAuthority('ADMIN')")
public class MngController {

    @Autowired
    private OrderService orderService;

    @GetMapping
    public String orderlist(HttpSession s, Model model) {

        List<Order> lists = orderService.findByStatusOrderByCreatedDesc(Status.MODERATION);
        model.addAttribute("orders", lists);
        //model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
        return "orderlist";
    }

    @GetMapping("/ord/{id}")
    public String showPageById (@PathVariable("id") String id, Model model) throws Exception {
        Long longid = 0l;
        try {
            longid = Long.parseLong(id);
        }
        catch (NumberFormatException e)
        {
            return "Что то пошло не так.... Попробуйте еще раз или обратитесь в Службу Поддеркжи";
        }

        if (longid != 0l) {
            Order order = orderService.findById(longid).orElseThrow(Exception::new);
            model.addAttribute("order", order);
            model.addAttribute("statuses",Status.values());
            // model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
        }
        return "ord";
    }
    @PostMapping("/ord")
    public String saveorder (@RequestParam("id") Order order,
                             @RequestParam String city,
                             @RequestParam String created,
                             @RequestParam String price,
                             @RequestParam String title,
                             @RequestParam String body,
                             @RequestParam String status,
                             @RequestParam String[] scategory,
                             @RequestParam String[] ssubcategory
                             ) throws Exception {


        order.setStatus(Status.valueOf(status));
        order.setBody(body);
        order.setTitle(title);
        order.setPrice(price);
       order.setCity(city);
       order.setCreated(new Date(created));


     order.getFilters().clear();

     ArrayList<String> arrayListscategory = new ArrayList<>();
        ArrayList<String> arrayListssubcategory = new ArrayList<>();

        for (int i = 0; i <scategory.length ; i++) {
            arrayListscategory.add(scategory[i]);
            arrayListssubcategory.add(ssubcategory[i]);
        }

        for (int i = 0; i <arrayListscategory.size() ; i++) {
            if (arrayListscategory.get(i).isEmpty())
            {
                arrayListscategory.remove(i);
                arrayListssubcategory.remove(i);
                i--;
            }

        }

        for (int i = 0; i <arrayListscategory.size() ; i++) {
            Filter f = new Filter();
            f.setCategory(arrayListscategory.get(i));
            f.setSubcategory(arrayListssubcategory.get(i));
            f.setOrder(order);
            order.getFilters().add(f);
        }



        try {

            orderService.save(order);
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "redirect:/mng";
    }



}
