<#macro header>
<#include "security.ftl">
<#if known>
<header class="site-header">
<div class="container">
    <a href="/" target="_self" class="logo-block" title="Ремонтник.ру">
            <span class="logo">
                <svg class="icon">
                    <use xlink:href="#logo"></use>
                </svg>
                <span class="hidden-lg">Ремонтник.ру</span>
            </span>

    </a>

    <div class="menu-toggle hidden-lg">
        <div class="first"></div>
        <div class="second"></div>
        <div class="third"></div>
    </div>






    <!--<script>rem.require(['Profile/UserMenuController', 'common/formatting.filters'])</script> -->
    <nav class="pull-right auth-only">
        <!-- ng-controller="UserMenuController"
         ng-init="init(
                true,

                null

            )">-->
        <ul >

            <!--<li><span class="icon doc" data-count="99"></span></li>-->
            <li>
                <a href="/messages/" target="_self" class="icon messages"
                   ng-attr-data-count="{[{ newMessages|empty }]}">
                    <svg>
                        <use xlink:href="#message"></use>
                    </svg>
                </a>
            </li>



           <li class="dropdown">

                <a class="dropdown-toggle" data-toggle="dropdown" href="#"> ${name}
                    <span class="caret"></span>
                </a>

                <ul class="dropdown-menu">
                    <li> <a target="_self" href="/myorders/">Мои заказы</a></li>
                    <li><a target="_self" href="/mypage/">Моя личная страница</a></li>

                    <li>

                        <form action="/logout" method="post">
                            <input type="submit" value="Выход"/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                    </li>
                </ul>
            </li>


            <!--
                        <li class="user-menu dropdown open" uib-dropdown="">
                             <div class="dropdown-toggle" uib-dropdown-toggle="" aria-haspopup="true" aria-expanded="true" onclick="">Михаил</div>
                             <div class="dropdown-menu" uib-dropdown-menu="">
                                 <ul>

                                     <li><a target="_self" href="/boards/my/">Мои заказы</a></li>

                                     <li><a target="_self" href="/account/my_page">Моя личная страница</a></li>

                                     <li><a target="_self" href="/account/">Мои настройки</a></li>



                                     <li><a target="_self" href="/auth/logout/">Выход</a></li>


                                 </ul>

                             </div>
                         </li>
                       -->


          </ul>
      </nav>


      <nav class="pull-left hidden-sm">
          <ul>

              <li><a target="_self" href="/myorders/">Заказы</a></li>

              <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

              <li><a target="_self" href="/portfolio/">Фото работ</a></li>


          </ul>
      </nav>

      <!-- мобильное меню -->
    <div class="menu-wrapper hidden-lg">
        <div>

            <nav>
                <ul>

                    <li><a target="_self" href="/myorders/">Мои заказы</a></li>

                    <li><a target="_self" href="/account/mypage">Моя личная страница</a></li>
                </ul>
            </nav>

            <nav>
                <ul>

                    <li class="active"><a target="_self" href="/add/">Добавить заказ</a></li>

                    <li><a target="_self" href="/orders/">Заказы</a></li>

                    <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                    <li><a target="_self" href="/portfolio/">Фото работ</a></li>


                </ul>
            </nav>
            <nav>
                <ul>

                    <li><a target="_self" href="/masteram">Для мастеров</a></li>


                </ul>
            </nav>
            <nav>
                <ul>


                    <li>
                        <form action="/logout" method="post">
                            <input type="submit" value="Выход"/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                      <!--  <a target="_self" href="/logout/">Выход</a> -->

                    </li>



                </ul>
            </nav>

        </div>
    </div>
</div>
</header>
<#else>
<header class="site-header">
    <div class="container">
        <a href="/" target="_self" class="logo-block titled" title="Ремонтник.ру">
            <span class="logo">
                <svg class="icon">
                    <use xlink:href="#logo"></use>
                </svg>
                <span class="hidden-lg">Ремонтник.ру</span>
            </span>
            <span class="title hidden-sm">Ремонтник.ру</span>
        </a>

        <div class="menu-toggle hidden-lg">
            <div class="first"></div>
            <div class="second"></div>
            <div class="third"></div>
        </div>


        <nav class="pull-right hidden-sm">
            <ul>

                <li><a target="_self" href="/customers">Как это работает?</a></li>

                <li><a target="_self" href="/login/">Войти</a></li>


            </ul>
        </nav>


        <nav class="pull-right hidden-sm">
            <ul>

                <li><a target="_self" href="/orders/">Заказы</a></li>

                <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                <li><a target="_self" href="/portfolio/">Фото работ</a></li>


            </ul>
        </nav>

        <!-- мобильное меню -->
        <div class="menu-wrapper hidden-lg">
            <div>

                <nav>
                    <ul>

                        <li class="active"><a target="_self" href="/add">Добавить заказ</a></li>

                        <li><a target="_self" href="/orders/">Заказы</a></li>

                        <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                        <li><a target="_self" href="/portfolio/">Фото работ</a></li>


                    </ul>
                </nav>
                <nav>
                    <ul>

                        <li><a target="_self" href="/customers">Как это работает?</a></li>

                        <li><a target="_self" href="/registration/">Стать исполнителем</a></li>


                    </ul>
                </nav>
                <nav>
                    <ul>


                        <li><a target="_self" href="/about">О проекте</a></li>

                        <li><a target="_self" href="/contacts">Связаться</a></li>

                        <li><a target="_self" href="/login/">Войти</a></li>



                    </ul>
                </nav>

            </div>
        </div>
    </div>
</header>
</#if>
</#macro>