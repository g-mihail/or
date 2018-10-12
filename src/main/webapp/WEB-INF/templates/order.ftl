<#import "parts/common.ftl" as c>
<#import "parts/navmenu.ftl" as n>
<@c.page>
<div class="position-switch">



    <script async src="/static/js/app.min/mobile-menu.js?1.2.778"></script>
</div>









<div class="content-wrapper">



    <script>rem.require(['Orders/OrderItemController'])</script>
    <div class="order-page" ng-controller="OrderItemController" ng-init="init(
    787318,
    true,
    false
)">





        <#if cat?? && cat!="">

        <#if subcat?? && subcat!="">
        <#if order.city=="Барнаул">
        <@n.navmenutitle city="barnaul" cat="${cat}" subcat="${subcat}" title="${order.title}" />
    </#if>
    <#if order.city=="Заринск">
    <@n.navmenutitle city="zarinsk" cat="${cat}" subcat="${subcat}" title="${order.title}" />
</#if>
<#if order.city=="Бийск">
<@n.navmenutitle city="bijsk" cat="${cat}" subcat="${subcat}" title="${order.title}" />
</#if>
        <#else>
<#if order.city=="Барнаул">

        <@n.navmenutitle city="barnaul" cat="${cat}" title="${order.title}" />
</#if>
<#if order.city=="Заринск">

<@n.navmenutitle city="zarinsk" cat="${cat}" title="${order.title}" />
</#if>
<#if order.city=="Бийск">

<@n.navmenutitle city="bijsk" cat="${cat}" title="${order.title}" />
</#if>

        </#if>

    <#else>
<#if order.city=="Барнаул">

    <@n.navmenutitle city="barnaul" title="${order.title}" />
</#if>

<#if order.city=="Заринск">

<@n.navmenutitle city="zarinsk" title="${order.title}" />
</#if>

<#if order.city=="Бийск">

<@n.navmenutitle city="bijsk" title="${order.title}" />
</#if>



</#if>







        <section>
            <div class="container">

                <h1>${order.title}</h1>
                <div class="order">
                    <div class="order__info">
                        <script>rem.require(['components/UI/GeographicMap/GeographicMap'])</script>
                        <rtk-geographic-map latitude="53.355084"
                                            longitude="83.769948"
                                            address="Алтайский край, Барнаул"></rtk-geographic-map>
                        <ul class="info-block">
                            <li class="order">
                                Заказ: ${id}

                                <rtk-order-status order="order"></rtk-order-status>

                            </li>
                            <li class="user">
                                Заказчик:

                                <a href="/user/${order.user.id}/"
                                   target="_self">${order.user.name}</a>
                                (1 заказ)

                            </li>
                            <li class="time">
                                Добавлен ${order.created} (1 day 20 hours назад)
                            </li>

                            <li class="location">
                                ${order.city}
                                <span ng-cloak ng-if="order.distance">
                                ({[{ order.distance < 1000 ? 'менее 1' : (order.distance / 1000|number:0) }]}&nbsp;км от&nbsp;Вас)
                            </span>
                            </li>

                            <li class="calendar">Начать работы

                                не позднее 27 August

                            </li>
                            <li class="budget-icon budget-category-75">
                                Бюджет:&nbsp; <span class="lowercase">${order.price}</span>
                            </li>
                        </ul>
                    </div>
                    <div class="order__details">
                        <p>${order.body}</p>
                    </div>

                    <script>rem.require(['components/UI/PictureGallery/PictureGallery'])</script>
                    <rtk-picture-gallery class="small"
                                         images="images"
                                         on-click="openAlbum(order.id, $i + 1)">


                    <div class="loaded">
                        <#list order.filenames as ord>

                        <#if ord??>
                        <a href="/img/${ord.uuidname}"><img src="/img/${ord.uuidname}" alt=""></a>
                      <!--  <img src="/img/${ord.uuidname}" alt="">-->
                        </#if>
                </#list>

                </div>
                <span class="spinner"></span>


                </rtk-picture-gallery>

                </div>
            </div>
        </section>


       <!-- <script>rem.require(['components/UI/PictureGallery/PictureGallery'])</script>-->
      <!--  <rtk-picture-gallery class="small"
                             images="images"
                             on-click="openAlbum(order.id, $i + 1)"> -->

      <!--  </rtk-picture-gallery> -->






        <section class="order__footer">
            <div class="container">

                <div class="order__categories">






                    <#list setcategory as setcat>

                    <#if setcat??>
                    <a href="/orders?category=${setcat}"
                       target="_self" class="btn btn-grey">${setcat}</a>
                </#if>
            </#list>



                    <span class="hidden-sm" ng-class="!showCategories && 'hidden-sm'">

 <#list order.filters as filt>

<#if filt??>

        <a href="/orders?category=${filt.category}&subcategory=${filt.subcategory}"
           target="_self" class="btn btn-grey">${filt.subcategory}</a>
 </#if>
</#list>
    </span>

                 <!--   <span class="more" ng-hide="showCategories" ng-click="showCategories = true">
        + еще 2
    </span> -->


                </div>


                <div class="offers">
            <span>


                    4 предложения (видны только заказчику)


            </span>

                </div>

            </div>
        </section>







    </div>


</div>

</@c.page>
