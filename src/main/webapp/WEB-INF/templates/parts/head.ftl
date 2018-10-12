<#macro head>
<#include "security.ftl">
<#if known>
<div class="orders-list-block__add-order">
    <a target="_self" href="/add" class="btn btn-orange sm" rem-disposable-button="add-order">Добавить заказ</a>

    <ul class="inner-nav">
        <li><a target="_self" href="/myorders" class="item">Мои заказы</a></li>
        <li><span class="active">Все заказы</span></li>
    </ul>

</div>
<#else>
<div class="orders-list-block__add-order">
    <a target="_self" href="/add" class="btn btn-orange sm">Добавить заказ</a>


    <div class="info">
        500 исполнителей сейчас следят за лентой
    </div>

    <div class="become-contractor"><a target="_self" href="/registration">Стать исполнителем</a></div>

</div>
</#if>
</#macro>

<#macro headmy>
<#include "security.ftl">
<#if known>
<div class="orders-list-block__add-order">
    <a target="_self" href="/add" class="btn btn-orange sm" rem-disposable-button="add-order">Добавить заказ</a>

    <ul class="inner-nav">
        <li> <span class="active">Мои заказы</span></li>
        <li> <a target="_self" href="/orders" class="item">Все заказы</a> </li>

    </ul>

</div>
<#else>
<div class="orders-list-block__add-order">
    <a target="_self" href="/add" class="btn btn-orange sm">Добавить заказ</a>


    <div class="info">
        500 исполнителей сейчас следят за лентой
    </div>

    <div class="become-contractor"><a target="_self" href="/registration">Стать исполнителем</a></div>

</div>
</#if>
</#macro>