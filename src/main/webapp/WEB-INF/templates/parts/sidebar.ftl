<#macro sidebar>
<script type="text/javascript">
function submitform()
{
  document.myform.submit();
}
</script>


<div class="orders-list-block__sidebar sidebar-block hidden-sm" ng-class="'in'">



        <div class="sidebar-block__item">
            <div class="h3-like">Город</div>
            <div class="content ng-scope" >
                <div>
                    <form method="post" name="myform"  action="/orders" onchange="submitform();">
                    <select name="cityb" style="width: 100%">
                        <option label="" value="" <#if (cityb?? && cityb == "")> selected="selected" </#if> ></option>
                    <option label="Барнаул" value="barnaul"  <#if (cityb?? && cityb == "barnaul")> selected="selected" </#if> >Барнаул</option>
                <option label="Заринск" value="zarinsk" <#if (cityb?? && cityb == "zarinsk")> selected="selected" </#if> >Заринск</option>
            <option label="Бийск" value="bijsk" <#if (cityb?? && cityb == "bijsk")> selected="selected" </#if> >Бийск</option>
                    </select>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

           <input type="hidden" name="category"    <#if (cat??)> value="${cat}" <#else> value="" </#if> />

           <input type="hidden" name="subcategory" <#if (subcat??)> value="${subcat}" <#else>  value=""  </#if> />

            </form>
                </div>

             </div>
        </div>



    <div class="sidebar-block__item work-categories">
        <div class="h3-like">Виды работ</div>

        <ul>
<li <#if (cat??) > class="subcategory"  <#else>  class="subcategory active"       </#if>    >
        <#if (city??) >

        <#if (city == "" && cityb == "")  >

        <span  uib-dropdown-toggle>  <a target="_self" href="/orders">Все категории</a> </span>
        <#else>
        <span  uib-dropdown-toggle> <a target="_self" href="/orders?city=${city}">Все категории</a> </span>

    </#if>
<#else>
<span  uib-dropdown-toggle>  <a target="_self" href="/orders">Все категории</a> </span>

</#if>

</li>
</ul>





        <ul  <#if (cat?? && cat=="Мелкие бытовые услуги") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if>  id="1" uib-dropdown=""
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass1();" uib-dropdown-toggle>Мелкие бытовые услуги</span>
                <ul class="work-categories__subcategories dropdown-container">

                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Мелкие бытовые услуги") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
                <#if (city??) >

                <#if (city == "" && cityb == "")  >

                <a target="_self" href="/orders?category=Мелкие бытовые услуги">Все подкатегории</a>
                <#else>
                <a target="_self" href="/orders?category=Мелкие бытовые услуги&city=${city}">Все подкатегории</a>

            </#if>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги">Все подкатегории</a>

</#if>
</li>



                    <li <#if (subcat?? && subcat=="Мастер на час") > class="subcategory active" <#else> class="subcategory"  </#if>  >
                        <#if (city??) >

                        <#if (city == "" && cityb == "")  >

                        <a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Мастер на час">Мастер на час</a>
                        <#else>
                        <a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Мастер на час&city=${city}">Мастер на час</a>

                    </#if>
                    <#else>
                    <a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Мастер на час">Мастер на час</a>

                </#if>
                    </li>

                    <li <#if (subcat?? && subcat=="Установка бытовой техники") > class="subcategory active" <#else> class="subcategory"  </#if> >



<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Установка бытовой техники">Установка бытовой техники</a>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Установка бытовой техники&city=${city}">Установка бытовой техники</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Установка бытовой техники">Установка бытовой техники</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Установка и вскрытие замков") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Установка и вскрытие замков">Установка и вскрытие замков</a>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Установка и вскрытие замков&city=${city}">Установка и вскрытие замков</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Установка и вскрытие замков">Установка и вскрытие замков</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Уборка помещений, клининг") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Уборка помещений, клининг">Уборка помещений, клининг</a>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Уборка помещений, клининг&city=${city}">Уборка помещений, клининг</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Уборка помещений, клининг">Уборка помещений, клининг</a>

</#if>


                    </li>



                    <li <#if (subcat?? && subcat=="Эмалировка ванн") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Эмалировка ванн">Эмалировка ванн</a>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Эмалировка ванн&city=${city}">Эмалировка ванн</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Мелкие бытовые услуги&subcategory=Эмалировка ванн">Эмалировка ванн</a>

</#if>
                    </li>


                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Комплексные работы") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if>  id="2"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span  onclick="changeClass2();" uib-dropdown-toggle>Комплексные работы</span>
                <ul class="work-categories__subcategories dropdown-container">

                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Комплексные работы") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
                <#if (city??) >

                <#if (city == "" && cityb == "")  >

                <a target="_self" href="/orders?category=Комплексные работы">Все подкатегории</a>
                <#else>
                <a target="_self" href="/orders?category=Комплексные работы&city=${city}">Все подкатегории</a>

            </#if>
            <#else>
            <a target="_self" href="/orders?category=Комплексные работы">Все подкатегории</a>

        </#if>
</li>


                    <li <#if (subcat?? && subcat=="Строительство домов и коттеджей") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство домов и коттеджей">Строительство домов и коттеджей</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство домов и коттеджей&city=${city}">Строительство домов и коттеджей</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство домов и коттеджей">Строительство домов и коттеджей</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Ремонт квартир и домов") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт квартир и домов">Ремонт квартир и домов</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт квартир и домов&city=${city}">Ремонт квартир и домов</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт квартир и домов">Ремонт квартир и домов</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Ремонт кухни") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт кухни">Ремонт кухни</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт кухни&city=${city}">Ремонт кухни</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт кухни">Ремонт кухни</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Кладка печей и каминов") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Кладка печей и каминов">Кладка печей и каминов</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Кладка печей и каминов&city=${city}">Кладка печей и каминов</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Кладка печей и каминов">Кладка печей и каминов</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Ремонт ванной") > class="subcategory active" <#else> class="subcategory"  </#if>>

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт ванной">Ремонт ванной</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт ванной&city=${city}">Ремонт ванной</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт ванной">Ремонт ванной</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Ремонт офиса") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт офиса">Ремонт офиса</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт офиса&city=${city}">Ремонт офиса</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт офиса">Ремонт офиса</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Ремонт туалета") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт туалета">Ремонт туалета</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт туалета&city=${city}">Ремонт туалета</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Ремонт туалета">Ремонт туалета</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Строительство бань и саун") > class="subcategory active" <#else> class="subcategory"  </#if>>

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство бань и саун">Строительство бань и саун</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство бань и саун&city=${city}">Строительство бань и саун</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство бань и саун">Строительство бань и саун</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Строительство бассейнов") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство бассейнов">Строительство бассейнов</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство бассейнов&city=${city}">Строительство бассейнов</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство бассейнов">Строительство бассейнов</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Строительство гаражей") > class="subcategory active" <#else> class="subcategory"  </#if> >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство гаражей">Строительство гаражей</a>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство гаражей&city=${city}">Строительство гаражей</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Комплексные работы&subcategory=Строительство гаражей">Строительство гаражей</a>

</#if>


                    </li>


                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Строительно-монтажные работы") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if>  id="3"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass3();" uib-dropdown-toggle>Строительно-монтажные работы</span>
                <ul class="work-categories__subcategories dropdown-container">

                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Строительно-монтажные работы") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы">Все подкатегории</a>

</#if>
</li>


                    <li <#if (subcat?? && subcat=="Остекление, окна, балконы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Остекление, окна, балконы">Остекление, окна, балконы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Остекление, окна, балконы&city=${city}">Остекление, окна, балконы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Остекление, окна, балконы">Остекление, окна, балконы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Двери") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Двери">Двери</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Двери&city=${city}">Двери</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Двери">Двери</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Кровельные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Кровельные работы">Кровельные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Кровельные работы&city=${city}">Кровельные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Кровельные работы">Кровельные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Алмазная резка и сверление") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Алмазная резка и сверление">Алмазная резка и сверление</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Алмазная резка и сверление&city=${city}">Алмазная резка и сверление</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Алмазная резка и сверление">Алмазная резка и сверление</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Бетонные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Бетонные работы">Бетонные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Бетонные работы&city=${city}">Бетонные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Бетонные работы">Бетонные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Бурение") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Бурение">Бурение</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Бурение&city=${city}">Бурение</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Бурение">Бурение</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Дорожное строительство") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Дорожное строительство">Дорожное строительство</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Дорожное строительство&city=${city}">Дорожное строительство</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Дорожное строительство">Дорожное строительство</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Заборы и ограждения") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Заборы и ограждения">Заборы и ограждения</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Заборы и ограждения&city=${city}">Заборы и ограждения</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Заборы и ограждения">Заборы и ограждения</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Земляные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Земляные работы">Земляные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Земляные работы&city=${city}">Земляные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Земляные работы">Земляные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Изоляционные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Изоляционные работы">Изоляционные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Изоляционные работы&city=${city}">Изоляционные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Изоляционные работы">Изоляционные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Кладочные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Кладочные работы">Кладочные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Кладочные работы&city=${city}">Кладочные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Кладочные работы">Кладочные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Ковка и литье") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Ковка и литье">Ковка и литье</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Ковка и литье&city=${city}">Ковка и литье</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Ковка и литье">Ковка и литье</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Лестницы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Лестницы">Лестницы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Лестницы&city=${city}">Лестницы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Лестницы">Лестницы</a>

</#if>

                    </li>


                    <li <#if (subcat?? && subcat=="Металлоконструкции") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Металлоконструкции">Металлоконструкции</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Металлоконструкции&city=${city}">Металлоконструкции</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Металлоконструкции">Металлоконструкции</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Рольставни и секционные ворота") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Рольставни и секционные ворота">Рольставни и секционные ворота</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Рольставни и секционные ворота&city=${city}">Рольставни и секционные ворота</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Рольставни и секционные ворота">Рольставни и секционные ворота</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Сварочные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Сварочные работы">Сварочные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Сварочные работы&city=${city}">Сварочные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Сварочные работы">Сварочные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Снос и демонтаж") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Снос и демонтаж">Снос и демонтаж</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Снос и демонтаж&city=${city}">Снос и демонтаж</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Снос и демонтаж">Снос и демонтаж</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Срубы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Срубы">Срубы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Срубы&city=${city}">Срубы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Срубы">Срубы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Столярные и плотницкие работы") > class="subcategory active" <#else> class="subcategory"  </#if>>

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Столярные и плотницкие работы">Столярные и плотницкие работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Столярные и плотницкие работы&city=${city}">Столярные и плотницкие работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Столярные и плотницкие работы">Столярные и плотницкие работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Фасадные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Фасадные работы">Фасадные работы</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Фасадные работы&city=${city}">Фасадные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Фасадные работы">Фасадные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Фундамент") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Фундамент">Фундамент</a>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Фундамент&city=${city}">Фундамент</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Строительно-монтажные работы&subcategory=Фундамент">Фундамент</a>

</#if>

                    </li>


                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Отделочные работы") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if> id="4"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass4();" uib-dropdown-toggle>Отделочные работы</span>
                <ul class="work-categories__subcategories dropdown-container">
                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Отделочные работы") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы">Все подкатегории</a>

</#if>
</li>

                    <li <#if (subcat?? && subcat=="Малярные и штукатурные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Малярные и штукатурные работы">Малярные и штукатурные работы</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Малярные и штукатурные работы&city=${city}">Малярные и штукатурные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Малярные и штукатурные работы">Малярные и штукатурные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Обойные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Обойные работы">Обойные работы</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Обойные работы&city=${city}">Обойные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Обойные работы">Обойные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Плиточные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Плиточные работы">Плиточные работы</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Плиточные работы&city=${city}">Плиточные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Плиточные работы">Плиточные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Гипсокартонные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Гипсокартонные работы">Гипсокартонные работы</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Гипсокартонные работы&city=${city}">Гипсокартонные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Гипсокартонные работы">Гипсокартонные работы</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Лепнина") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Лепнина">Лепнина</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Лепнина&city=${city}">Лепнина</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Лепнина">Лепнина</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Мозаичные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Мозаичные работы">Мозаичные работы</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Мозаичные работы&city=${city}">Мозаичные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Мозаичные работы">Мозаичные работы</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Напольные покрытия") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Напольные покрытия">Напольные покрытия</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Напольные покрытия&city=${city}">Напольные покрытия</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Напольные покрытия">Напольные покрытия</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Потолки") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Потолки">Потолки</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Потолки&city=${city}">Потолки</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Потолки">Потолки</a>

</#if>


                    </li>


                    <li <#if (subcat?? && subcat=="Роспись стен") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Роспись стен">Роспись стен</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Роспись стен&city=${city}">Роспись стен</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Роспись стен">Роспись стен</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Стеновые панели") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Стеновые панели">Стеновые панели</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Стеновые панели&city=${city}">Стеновые панели</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Стеновые панели">Стеновые панели</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Стяжка") > class="subcategory active" <#else> class="subcategory"  </#if> >


<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Отделочные работы&subcategory=Стяжка">Стяжка</a>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Стяжка&city=${city}">Стяжка</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Отделочные работы&subcategory=Стяжка">Стяжка</a>

</#if>


                    </li>


                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Инженерные системы") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if> id="5"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass5();" uib-dropdown-toggle>Инженерные системы</span>
                <ul class="work-categories__subcategories dropdown-container">
                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Инженерные системы") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы">Все подкатегории</a>

</#if>
</li>

                    <li <#if (subcat?? && subcat=="Водоснабжение и канализация") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Водоснабжение и канализация">Водоснабжение и канализация</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Водоснабжение и канализация&city=${city}">Водоснабжение и канализация</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Водоснабжение и канализация">Водоснабжение и канализация</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Электромонтажные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Электромонтажные работы">Электромонтажные работы</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Электромонтажные работы&city=${city}">Электромонтажные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Электромонтажные работы">Электромонтажные работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Сантехнические работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Сантехнические работы">Сантехнические работы</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Сантехнические работы&city=${city}">Сантехнические работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Сантехнические работы">Сантехнические работы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Альтернативные источники энергии") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Альтернативные источники энергии">Альтернативные источники энергии</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Альтернативные источники энергии&city=${city}">Альтернативные источники энергии</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Альтернативные источники энергии">Альтернативные источники энергии</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Газификация") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Газификация">Газификация</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Газификация&city=${city}">Газификация</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Газификация">Газификация</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Кондиционирование и вентиляция") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Кондиционирование и вентиляция">Кондиционирование и вентиляция</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Кондиционирование и вентиляция&city=${city}">Кондиционирование и вентиляция</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Кондиционирование и вентиляция">Кондиционирование и вентиляция</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Лифты и эскалаторы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Лифты и эскалаторы">Лифты и эскалаторы</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Лифты и эскалаторы&city=${city}">Лифты и эскалаторы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Лифты и эскалаторы">Лифты и эскалаторы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Отопление") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Отопление">Отопление</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Отопление&city=${city}">Отопление</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Отопление">Отопление</a>

</#if>

                    </li>


                    <li <#if (subcat?? && subcat=="Системы видеонаблюдения") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Системы видеонаблюдения">Системы видеонаблюдения</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Системы видеонаблюдения&city=${city}">Системы видеонаблюдения</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Системы видеонаблюдения">Системы видеонаблюдения</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Теплый пол") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Теплый пол">Теплый пол</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Теплый пол&city=${city}">Теплый пол</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Теплый пол">Теплый пол</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Умный дом") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Инженерные системы&subcategory=Умный дом">Умный дом</a>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Умный дом&city=${city}">Умный дом</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Инженерные системы&subcategory=Умный дом">Умный дом</a>

</#if>

                    </li>


                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Благоустройство территорий") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if>  id="6"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass6();" uib-dropdown-toggle>Благоустройство территорий</span>
                <ul class="work-categories__subcategories dropdown-container">
                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Благоустройство территорий") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Благоустройство территорий">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Благоустройство территорий&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Благоустройство территорий">Все подкатегории</a>

</#if>
</li>



                    <li <#if (subcat?? && subcat=="Уличное освещение") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Благоустройство территорий&subcategory=Уличное освещение">Уличное освещение</a>
<#else>
<a target="_self" href="/orders?category=Благоустройство территорий&subcategory=Уличное освещение&city=${city}">Уличное освещение</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Благоустройство территорий&subcategory=Уличное освещение">Уличное освещение</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Озеленение") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Благоустройство территорий&subcategory=Озеленение">Озеленение</a>
<#else>
<a target="_self" href="/orders?category=Благоустройство территорий&subcategory=Озеленение&city=${city}">Озеленение</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Благоустройство территорий&subcategory=Озеленение">Озеленение</a>

</#if>

                    </li>

                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Проектирование и дизайн") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if> id="7"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass7();" uib-dropdown-toggle>Проектирование и дизайн</span>
                <ul class="work-categories__subcategories dropdown-container">
                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Проектирование и дизайн") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Проектирование и дизайн">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн">Все подкатегории</a>

</#if>
</li>



                    <li <#if (subcat?? && subcat=="Дизайн интерьера") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Дизайн интерьера">Дизайн интерьера</a>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Дизайн интерьера&city=${city}">Дизайн интерьера</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Дизайн интерьера">Дизайн интерьера</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Инженерное проектирование") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Инженерное проектирование">Инженерное проектирование</a>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Инженерное проектирование&city=${city}">Инженерное проектирование</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Инженерное проектирование">Инженерное проектирование</a>

</#if>


                    </li>

                    <li <#if (subcat?? && subcat=="Геодезические работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Геодезические работы">Геодезические работы</a>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Геодезические работы&city=${city}">Геодезические работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Проектирование и дизайн&subcategory=Геодезические работы">Геодезические работы</a>

</#if>

                    </li>

                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Обслуживание объектов") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if> id="8"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass8();" uib-dropdown-toggle>Обслуживание объектов</span>
                <ul class="work-categories__subcategories dropdown-container">
                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Обслуживание объектов") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов">Все подкатегории</a>

</#if>
</li>

                    <li <#if (subcat?? && subcat=="Вывоз мусора") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Вывоз мусора">Вывоз мусора</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Вывоз мусора&city=${city}">Вывоз мусора</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Вывоз мусора">Вывоз мусора</a>

</#if>



                    </li>

                    <li <#if (subcat?? && subcat=="Грузоперевозки") > class="subcategory active" <#else> class="subcategory"  </#if>>

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Грузоперевозки">Грузоперевозки</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Грузоперевозки&city=${city}">Грузоперевозки</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Грузоперевозки">Грузоперевозки</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Уборка территорий") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Уборка территорий">Уборка территорий</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Уборка территорий&city=${city}">Уборка территорий</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Уборка территорий">Уборка территорий</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Аренда оборудования") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Аренда оборудования">Аренда оборудования</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Аренда оборудования&city=${city}">Аренда оборудования</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Аренда оборудования">Аренда оборудования</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Аренда строительной техники") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Аренда строительной техники">Аренда строительной техники</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Аренда строительной техники&city=${city}">Аренда строительной техники</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Аренда строительной техники">Аренда строительной техники</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Высотные работы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Высотные работы">Высотные работы</a>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Высотные работы&city=${city}">Высотные работы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Обслуживание объектов&subcategory=Высотные работы">Высотные работы</a>

</#if>

                    </li>


                </ul>
            </li>
        </ul>

        <ul <#if (cat?? && cat=="Интерьер") > class="work-categories__category dropdown open" <#else> class="work-categories__category dropdown"  </#if> id="9"
            uib-dropdown
            auto-close="disabled"
            is-open="false">
            <li>
                <span onclick="changeClass9();" uib-dropdown-toggle>Интерьер</span>
                <ul class="work-categories__subcategories dropdown-container">
                    <li <#if (subcat??) > class="subcategory"  <#else>  <#if (cat?? && cat=="Интерьер") >  class="subcategory active"   <#else> class="subcategory"  </#if>  </#if>  >
<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Интерьер">Все подкатегории</a>
<#else>
<a target="_self" href="/orders?category=Интерьер&city=${city}">Все подкатегории</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Интерьер">Все подкатегории</a>

</#if>
</li>


                    <li <#if (subcat?? && subcat=="Мебель") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Интерьер&subcategory=Мебель">Мебель</a>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Мебель&city=${city}">Мебель</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Мебель">Мебель</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Шторы и карнизы") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Интерьер&subcategory=Шторы и карнизы">Шторы и карнизы</a>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Шторы и карнизы&city=${city}">Шторы и карнизы</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Шторы и карнизы">Шторы и карнизы</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Офисные перегородки") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Интерьер&subcategory=Офисные перегородки">Офисные перегородки</a>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Офисные перегородки&city=${city}">Офисные перегородки</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Офисные перегородки">Офисные перегородки</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Декорирование интерьеров") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Интерьер&subcategory=Декорирование интерьеров">Декорирование интерьеров</a>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Декорирование интерьеров&city=${city}">Декорирование интерьеров</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Декорирование интерьеров">Декорирование интерьеров</a>

</#if>

                    </li>

                    <li <#if (subcat?? && subcat=="Жалюзи") > class="subcategory active" <#else> class="subcategory"  </#if> >

<#if (city??) >

<#if (city == "" && cityb == "")  >

<a target="_self" href="/orders?category=Интерьер&subcategory=Жалюзи">Жалюзи</a>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Жалюзи&city=${city}">Жалюзи</a>

</#if>
<#else>
<a target="_self" href="/orders?category=Интерьер&subcategory=Жалюзи">Жалюзи</a>

</#if>

                    </li>


                </ul>
            </li>
        </ul>

    </div>



    <rtk-sticky hidden offset="20"
                threshold=".orders-list-block__wrap .order-block:last"
                watch-heights=".orders-list-block__sidebar">
        <div class="sidebar-block__item scroll-up-block" rem-scroll-to=".orders-list-block">
            <span class="arrow-up"></span>
            Выбрать регион и&nbsp;виды работ
        </div>
    </rtk-sticky>


</div>
</#macro>