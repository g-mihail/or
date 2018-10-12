
<#import "parts/common.ftl" as c>
<#import "parts/navmenu.ftl" as n>
<@c.page>
<h1 align="center">Cписок заявок на модерации</h1>

<#if (orders?size>0)>
<table align="center">
    <tr>
        <th>Id</th>
        <th>Город</th>
        <th>Дата создания</th>
        <th>Цена</th>
        <th>Загаловок</th>
        <th>Автор</th>
        <th>Тело заявки</th>
        <th>Статус</th>
    </tr>
    <#list orders as order>
    <tr>
        <td><a href="mng/ord/${order.id}">${order.id}</a></td>
        <td>${order.city}</td>
        <td>${order.created}</td>
        <td>${order.price}</td>
        <td>${order.title}</td>
        <td>${order.user.name}</td>
        <td>${order.body}</td>
        <td>${order.status}</td>
    </tr>
</#list>
</table>
<#else>
<p align="center"> НЕТ ЗАЯВОК В СТАТУСЕ MODERATION </p>
</#if>

</@c.page>