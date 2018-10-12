<#macro navmenu city="" category="" title="">

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>

 <#if city != "">
        <a href="/orders/altayskiy_kray/"
           target="_self">${city}</a>

    </#if>

    <#if category!= "">
        <a href="/boards/altayskiy_kray/vodosnabzhenie-i-kanalizatsiia/"
           target="_self">${category}</a>
</#if>
<#if title!= "">
        <span>${title}</span>
</#if>
    </div>
</div>
</#macro>


<#macro navmenutitle city="" cat="" subcat="" title="">

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>


        <a href="/orders?city=${city}"
           target="_self">
            <#if (city?? && city == "barnaul")>
            Барнаул
        </#if>
        <#if (city?? && city == "zarinsk")>
        Заринск
    </#if>
    <#if (city?? && city == "bijsk")>
    Бийск
</#if>






</a>


<#if (cat?? && cat != "")>

<a href="/orders?category=${cat}&city=${city}"
   target="_self">${cat}</a>
</#if>
<#if (subcat?? && subcat != "")>
<a href="/orders?category=${cat}&subcategory=${subcat}&city=${city}"
   target="_self">${subcat}</a>
</#if>

<span>${title}</span>

</div>
</div>



</#macro>



<#macro navm city="" cityb="" cat="" subcat="">


<#if (city?? && city!="")>

<#if (cat?? && cat!="")>
<#if (subcat?? && subcat!="")>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>


        <a href="/orders?city=${city}"
           target="_self">
            <#if (city?? && city == "barnaul")>
            Барнаул
        </#if>
            <#if (city?? && city == "zarinsk")>
       Заринск
        </#if>
            <#if (city?? && city == "bijsk")>
        Бийск
        </#if>

        </a>



    <a href="/orders?category=${cat}&city=${city}"
       target="_self">${cat}</a>

        <span>${subcat}</span>

</div>
</div>




<#else>
<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>


        <a href="/orders?city=${city}"
           target="_self">
            <#if (city?? && city == "barnaul")>
            Барнаул
        </#if>
        <#if (city?? && city == "zarinsk")>
        Заринск
    </#if>
    <#if (city?? && city == "bijsk")>
    Бийск
</#if>

        </a>






        <span>${cat}</span>

    </div>
</div>

</#if>
<#else>
<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>



        <span>
              <#if (city?? && city == "barnaul")>
            Барнаул
        </#if>
        <#if (city?? && city == "zarinsk")>
        Заринск
    </#if>
    <#if (city?? && city == "bijsk")>
    Бийск
</#if>
        </span>

    </div>
</div>

</#if>




<#elseif (cityb?? && cityb!= "")>

<#if (cat?? && cat!="")>
<#if (subcat?? && subcat!="")>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>


        <a href="/orders?city=${cityb}"
           target="_self">
            <#if (cityb?? && cityb == "barnaul")>
            Барнаул
        </#if>
        <#if (cityb?? && cityb == "zarinsk")>
        Заринск
    </#if>
    <#if (cityb?? && cityb == "bijsk")>
    Бийск
</#if>
        </a>



        <a href="/orders?category=${cat}&city=${cityb}"
           target="_self">${cat}</a>


        <span>${subcat}</span>

    </div>
</div>
<#else>


<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>


        <a href="/orders?city=${cityb}"
           target="_self">

            <#if (cityb?? && cityb == "barnaul")>
            Барнаул
        </#if>
        <#if (cityb?? && cityb == "zarinsk")>
        Заринск
    </#if>
    <#if (cityb?? && cityb == "bijsk")>
    Бийск
</#if>
        </a>






        <span>${cat}</span>

    </div>
</div>

</#if>
<#else>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>



        <span>
                 <#if (cityb?? && cityb == "barnaul")>
            Барнаул
        </#if>
        <#if (cityb?? && cityb == "zarinsk")>
        Заринск
    </#if>
    <#if (cityb?? && cityb == "bijsk")>
    Бийск
</#if>
        </span>

    </div>
</div>

</#if>


<#else>

<#if (cat?? && cat!="")>
<#if (subcat?? && subcat!="")>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>





        <a href="/orders?category=${cat}"
           target="_self">${cat}</a>


        <span>${subcat}</span>

    </div>
</div>
<#else>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>



        <span>${cat}</span>

    </div>
</div>
</#if>
<#else>
<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <span>Мои заказы</span>





     </div>
 </div>

 </#if>

 </#if>


 </#macro>


 <#macro navmenucity city="">

 <div class="container">
     <div class="breadcrumbs">
         <a href="/" target="_self">Главная</a>
         <a href="/orders/" target="_self">Заказы</a>

         <#if city != "">
         <!--<a href="/orders/altayskiy_kray/"
            target="_self">${city}</a> -->
        <#if (city?? && city == "barnaul")>
        <span>Барнаул<span>
        </#if>
            <#if (city?? && city == "zarinsk")>
        <span>Заринск<span>
        </#if>
            <#if (city?? && city == "bijsk")>
        <span>Бийск<span>
        </#if>
    </#if>


</div>
</div>
</#macro>

<#macro navmenuonly>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <span>Заказы</span>
</div>
</div>
</#macro>

<#macro navmenumy>

<div class="container">
    <div class="breadcrumbs">
        <a href="/" target="_self">Главная</a>
        <a href="/orders/" target="_self">Заказы</a>
        <span>Мои заказы</span>
    </div>
</div>
</#macro>