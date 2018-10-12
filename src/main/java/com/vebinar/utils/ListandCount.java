package com.vebinar.utils;

import com.vebinar.dto.OrderOutForm;

import java.util.List;

public class ListandCount {
    List<OrderOutForm> listorderOutForm;
    Integer count;

    public ListandCount(List<OrderOutForm> listorderOutForm, Integer count) {
        this.listorderOutForm = listorderOutForm;
        this.count = count;
    }

    public List<OrderOutForm> getListorderOutForm() {
        return listorderOutForm;
    }

    public Integer getCount() {
        return count;
    }
}
