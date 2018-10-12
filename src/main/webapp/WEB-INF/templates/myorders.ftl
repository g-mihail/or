<#import "pagination.ftl" as pagination />
<#import "spring.ftl" as spring />
<#import "parts/sidebar.ftl" as s>
<#import "parts/navmenu.ftl" as n>
<#import "parts/navmenu2.ftl" as n2>
<#import "parts/header.ftl" as h>
<#import "parts/head.ftl" as he>
<!DOCTYPE html>
<html lang="ru" id="app">
<head ng-controller="HeadController as head">
    <title ng-bind="head.pageTitle">Мои заказы на строительные работы и ремонтные услуги, тендеры</title>

    <meta name="description" content="Заказ по ремонту и строительству.">
    <meta name="keywords" content="ремонт,строительство, заказ">

    <meta name="robots" content="index, follow">

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","queueTime":0,"licenseKey":"b03cad8662","agent":"","transactionName":"NlMBZ0dZVxUEUEZdWA8ZJUZbW00PCl0dVUcRRU1cR1xcFBYdRF1SFkU8QEFZTQ8GCX1GUwREL1pGTGoSBEdbV2EIUxQdUl1N","applicationID":"21557549","errorBeacon":"bam.nr-data.net","applicationTime":754}</script>
    <![endif]-->


    <link rel="icon" href="/favicon.ico">
    <link href="/favicon.ico" rel="shortcut icon">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">

    <style type="text/css">
    svg {
        display: none;
    }
</style>
    <link rel="stylesheet" href="/resources/css/redesign.css?1.2.778">

    <!-- Bootstrap-->

    <!--
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    -->

    <!-- Bootstrap CSS -->
<!--
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

-->

    <script>
    document.documentElement.classList && document.documentElement.classList.add('js');

</script>
    <!--[if IE]>
    <script>
    delete rem.sentryDsn;
</script>
    <![endif]-->
    <script>rem.require(['Application/HeadController'])</script>

</head>
<body vocab="https://schema.org/">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>






<script async src="/resources/js/app.min/client-id.js?1.2.778" data-user-id="811670"></script>



<svg style="display: none" version="1.1" xmlns="http://www.w3.org/2000/svg" xml:space="preserve">
    <symbol id="logo" viewBox="0 0 200 200">
        <path fill-rule="evenodd" d="M10.256,127.197c0,0-4.169,0.309-6.054-0.996
            c-1.812-1.253-3.124-4.713,0.193-8.032C9.397,113.157,91.336,9.986,93.949,6.144c3.481-5.113,7.592-4.881,11.073,0.003
            c1.021,1.43,17.989,22.528,36.843,45.89c-0.058,0.031-0.058-7.751-0.058-9.065c0-2.112,0.859-6.696,6.155-6.693l13.423,0.009
            c3.869,0,5.517,3.478,5.517,7.598c-0.006,1.485,0.034,39.16,0,39.123c14.765,18.206,26.843,32.999,28.005,34.163
            c6.712,6.709-0.721,10.44-3.044,10.434l-9.374-0.021c-3.723-0.009-7.057,1.415-7.057,6.302v47.094
            c0,5.352-35.761,17.155-75.252,17.017c-39.615-0.141-75.863-9.722-75.848-14.786c0.012-5.345-0.015-41.865,0-48.359
            c0.012-6.504-2.051-7.528-6.216-7.638C11.958,127.054,10.256,127.197,10.256,127.197z M87.964,97.136c0,0-0.685-4.532,3.915-4.905
            c4.603-0.37,16.342-1.012,21.926,2.304s9.407,8.142,9.407,14.756c0,6.614-1.158,11.247-5.477,15.104
            c-3.918,3.499-8.695,4.56-16.064,4.496c-7.054-0.058-13.707-1.372-13.707-5.321V97.136z M65.189,77.881c0,0-0.095-5.009,7.576-6.039
            c7.674-1.03,31.565-2.894,45.511,0.813c13.952,3.707,24.392,13.943,26.58,26.914c2.408,14.267,0.254,30.162-10.636,40.483
            c-8.625,8.179-19.361,10.547-30.933,10.327c-11.287-0.214-15.361-5.242-15.361,2.039v17.02c0,2.647-0.474,3.686-3.6,4.716
            c-1.137,0.468-3.793,0.969-7.583,0.96c-3.79-0.012-7.769-0.535-7.864-0.724c-3.029-0.293-3.692-2.185-3.692-4.642V77.881z"></path>
    </symbol>
    <symbol id="instagram" viewBox="3 3 18 18">
        <path d="M 8 3 C 5.243 3 3 5.243 3 8 L 3 16 C 3 18.757 5.243 21 8 21 L 16 21 C 18.757 21 21 18.757 21 16 L 21 8 C 21 5.243 18.757 3 16 3 L 8 3 z M 8 5 L 16 5 C 17.654 5 19 6.346 19 8 L 19 16 C 19 17.654 17.654 19 16 19 L 8 19 C 6.346 19 5 17.654 5 16 L 5 8 C 5 6.346 6.346 5 8 5 z M 17 6 A 1 1 0 0 0 16 7 A 1 1 0 0 0 17 8 A 1 1 0 0 0 18 7 A 1 1 0 0 0 17 6 z M 12 7 C 9.243 7 7 9.243 7 12 C 7 14.757 9.243 17 12 17 C 14.757 17 17 14.757 17 12 C 17 9.243 14.757 7 12 7 z M 12 9 C 13.654 9 15 10.346 15 12 C 15 13.654 13.654 15 12 15 C 10.346 15 9 13.654 9 12 C 9 10.346 10.346 9 12 9 z"></path>
    </symbol>
    <symbol id="vkontakte" viewBox="0 0 100 100">
        <path d="M94.242,66.929c-2.873-3.446-6.254-6.387-9.453-9.509
            c-2.886-2.816-3.069-4.449-0.748-7.698c2.532-3.546,5.255-6.956,7.809-10.486c2.385-3.299,4.824-6.589,6.078-10.539
            c0.796-2.513,0.092-3.623-2.485-4.063c-0.444-0.077-0.903-0.081-1.355-0.081l-15.289-0.018c-1.883-0.028-2.924,0.793-3.59,2.462
            c-0.9,2.256-1.826,4.51-2.898,6.687c-2.429,4.936-5.143,9.707-8.949,13.747c-0.839,0.891-1.767,2.017-3.169,1.553
            c-1.754-0.64-2.27-3.53-2.242-4.507L57.936,26.83c-0.34-2.521-0.899-3.645-3.402-4.135l-15.882,0.003
            c-2.12,0-3.183,0.819-4.315,2.145c-0.653,0.766-0.85,1.263,0.492,1.517c2.636,0.5,4.121,2.206,4.515,4.849
            c0.632,4.223,0.588,8.463,0.224,12.703c-0.107,1.238-0.32,2.473-0.811,3.629c-0.768,1.817-2.008,2.187-3.637,1.069
            c-1.475-1.012-2.511-2.44-3.525-3.874c-3.809-5.382-6.848-11.186-9.326-17.285c-0.716-1.762-1.951-2.83-3.818-2.859
            c-4.587-0.073-9.175-0.085-13.762,0.004c-2.76,0.052-3.583,1.392-2.459,3.894c4.996,11.113,10.557,21.918,17.816,31.76
            c3.727,5.051,8.006,9.51,13.534,12.67c6.265,3.582,13.009,4.66,20.112,4.327c3.326-0.156,4.325-1.021,4.479-4.336
            c0.104-2.267,0.361-4.523,1.48-6.56c1.098-2,2.761-2.381,4.678-1.136c0.959,0.623,1.766,1.415,2.53,2.252
            c1.872,2.047,3.677,4.158,5.62,6.136c2.437,2.481,5.324,3.946,8.954,3.646l14.054,0.002c2.264-0.148,3.438-2.923,2.138-5.451
            C96.712,70.031,95.514,68.454,94.242,66.929z"></path>
    </symbol>
    <symbol id="fb_flat" viewBox="0 0 100 100">
        <path d="M73.099,15.973l-9.058,0.004c-7.102,0-8.477,3.375-8.477,8.328v10.921h16.938l-0.006,17.106H55.564v43.895H37.897V52.332
            h-14.77V35.226h14.77V22.612C37.897,7.972,46.84,0,59.9,0L73.1,0.021L73.099,15.973L73.099,15.973z"></path>
    </symbol>
    <symbol id="facebook" viewBox="0 0 61 61">
        <path d="M57.378,0.001H3.352C1.502,0.001,0,1.5,0,3.353v54.026c0,1.853,1.502,3.354,3.352,3.354h29.086V37.214h-7.914v-9.167h7.914
            v-6.76c0-7.843,4.789-12.116,11.787-12.116c3.355,0,6.232,0.251,7.071,0.36v8.198l-4.854,0.002c-3.805,0-4.539,1.809-4.539,4.462
            v5.851h9.078l-1.187,9.166h-7.892v23.52h15.475c1.852,0,3.355-1.503,3.355-3.351V3.351C60.731,1.5,59.23,0.001,57.378,0.001z"></path>
    </symbol>
    <symbol id="call" viewBox="0 0 23 23">
        <path d="M16.5 11h-5.8l2.6-2.6c.2-.2.2-.5 0-.7s-.5-.2-.7 0l-3.5 3.5s-.1.1-.1.2v.3c0 .1.1.1.1.2l3.5 3.5c.1.1.2.1.4.1s.3 0 .4-.1c.2-.2.2-.5 0-.7L10.7 12h5.8c.3 0 .5-.2.5-.5s-.2-.5-.5-.5z"></path>
        <path d="M20.5 2H8.9c0-.9-.7-1.6-1.6-1.8C6.7.1 6 0 5.4 0c-.5 0-.9 0-1.4.1-.3 0-.7.2-1 .2l-.1.1c-.6.5-1 1.2-1.3 1.8C1 3.5.6 4.8.4 6.2.1 7.8 0 9.4 0 11.1v.9c0 1.6.1 3.3.4 4.9.2 1.4.6 2.7 1.2 3.9.3.7.7 1.3 1.3 1.8l.1.1c.3.1.7.2 1 .2.5.1.9.1 1.4.1.7 0 1.3-.1 2-.2.8-.2 1.5-.9 1.6-1.8h11.6c1.4 0 2.5-1.1 2.5-2.5v-14C23 3.1 21.9 2 20.5 2zM7.8 21.4c-.1.2-.4.4-.6.4-.7.1-1.2.2-1.8.2-.4 0-.8 0-1.2-.1-.2 0-.4-.1-.6-.1h-.1c-.4-.3-.7-.8-1-1.5-.5-1-.8-2.1-1.1-3.6-.3-1.4-.4-2.8-.4-4.8v-.5-.3c0-1.9.1-3.4.4-4.7.3-1.6.6-2.7 1.1-3.7.3-.6.6-1.1 1-1.5h.1c.2 0 .4-.1.6-.1C4.6 1 5 1 5.4 1c.6 0 1.1.1 1.7.2.2 0 .5.2.6.4.2.2.2.4.2.6-.2 1-.4 2.1-.6 3.1l-.2.8c-.1.3-.2.6-.8.8-.5.2-.9.3-1.3.4-.6.1-.9.5-1 1.1-.1 1-.2 2-.2 3.1s0 2.1.2 3.1c.1.6.4 1 1 1.1.4.1.9.2 1.3.4.6.2.7.5.8.8l.2.8c.2 1 .4 2.1.6 3.1 0 .2 0 .4-.1.6zM22 18.5c0 .8-.7 1.5-1.5 1.5H8.7c0 .2.1.4.1.6-.3-1.3-.5-2.6-.8-3.9-.2-.8-.7-1.3-1.4-1.6-.4-.1-.9-.3-1.4-.4-.1 0-.2-.1-.2-.2-.1-1-.2-2-.1-3 0-1 0-2 .1-3 0-.1.1-.2.2-.2.5-.2.9-.3 1.4-.4.8-.3 1.3-.8 1.4-1.6.2-1.1.5-2.2.7-3.3h11.8c.8 0 1.5.7 1.5 1.5v14z"></path>
    </symbol>
    <symbol id="message" viewBox="0 0 22 19">
        <path d="M19.5 0h-17C1.1 0 0 1.1 0 2.5v14C0 17.9 1.1 19 2.5 19h17c1.4 0 2.5-1.1 2.5-2.5v-14C22 1.1 20.9 0 19.5 0zm0 1c.3 0 .6.1.9.3l-8.3 8.3c-.6.6-1.6.6-2.1 0L1.6 1.3c.3-.2.6-.3.9-.3h17zM21 16.5c0 .8-.7 1.5-1.5 1.5h-17c-.8 0-1.5-.7-1.5-1.5v-14c0-.1 0-.3.1-.4l8.2 8.2c.4.4 1 .7 1.7.7s1.3-.3 1.8-.7L21 2.1v14.4z"></path>
    </symbol>
</svg>


<section class="all-wrappper" id="wrapper">



    <div class="position-switch">


       <!-- <header class="site-header ">
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



                <script>rem.require(['Profile/UserMenuController', 'common/formatting.filters'])</script>
                <nav class="pull-right auth-only"
                     ng-controller="UserMenuController"
                     ng-init="init(
                true,

                null

            )">
                    <ul>


                        <li>
                            <a href="/messages/" target="_self" class="icon messages"
                               ng-attr-data-count="{[{ newMessages|empty }]}">
                                <svg>
                                    <use xlink:href="#message"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="user-menu" uib-dropdown>
                            <div class="dropdown-toggle" uib-dropdown-toggle>Михаил</div>
                            <div class="dropdown-menu" uib-dropdown-menu>
                                <ul>

                                    <li><a target="_self" href="/boards/my/">Мои заказы</a></li>

                                    <li><a target="_self" href="/account/my_page">Моя личная страница</a></li>

                                    <li><a target="_self" href="/account/">Мои настройки</a></li>



                                    <li><a target="_self" href="/auth/logout/">Выход</a></li>


                                </ul>

                            </div>
                        </li>
                    </ul>
                </nav>


                <nav class="pull-left hidden-sm">
                    <ul>

                        <li class="active"><a target="_self" href="/boards/my/">Заказы</a></li>

                        <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                        <li><a target="_self" href="/portfolio/">Фото работ</a></li>


                    </ul>
                </nav>
-->
                <!-- мобильное меню -->
              <!--  <div class="menu-wrapper hidden-lg">
                    <div>

                        <nav>
                            <ul>

                                <li><a target="_self" href="/boards/my/">Мои заказы</a></li>

                                <li><a target="_self" href="/account/my_page">Моя личная страница</a></li>

                                <li><a target="_self" href="/account/">Мои настройки</a></li>


                            </ul>
                        </nav>

                        <nav>
                            <ul>

                                <li><a target="_self" href="/boards/add/">Добавить заказ</a></li>

                                <li class="active"><a target="_self" href="/boards/">Заказы</a></li>

                                <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                                <li><a target="_self" href="/portfolio/">Фото работ</a></li>


                            </ul>
                        </nav>
                        <nav>
                            <ul>

                                <li><a target="_self" href="/pages/masteram">Для мастеров</a></li>


                            </ul>
                        </nav>
                        <nav>
                            <ul>


                                <li><a target="_self" href="/auth/logout/">Выход</a></li>



                            </ul>
                        </nav>

                    </div>
                </div>
            </div>
        </header> -->

        <@h.header>

        </@h.header>

        <script async src="/resources/js/app.min/mobile-menu.js?1.2.778"></script>
    </div>









    <div class="content-wrapper">


       <!-- <script>
        rem.require([
            'components/UI/Sticky/Sticky',
            'common/remDisposableButton.directive',
            'common/remScrollTo.directive',
            'Billing/remCurrency.filter',
            'Orders/remBudgetIcon.directive'
        ]);
    </script> -->

        <@n.navmenumy>

        </@n.navmenumy>

        <div class="container">

            <div class="orders-list-block">
                <h1>Мои заказы</h1>




                <!-- mobile filters -->
                <!-- <script>rem.require([
     'common/RegionFiltersController',
     'components/UI/SectionFilter/SectionFilter'
 ])</script>
                 <div ng-controller="RegionFiltersController as filters"
                      ng-init="filters.init(
          {
             baseUrl: '/boards/',


             urlParams: null
          },
          null
      )">
                     <rtk-section-filter on-apply="filters.goTo($region, $category)"
                                         start-open="false"
                                         no-category="false"
                                         no-region="false"
                                         no-city="true">

                         <rtk-mobile-collapse></rtk-mobile-collapse>
                     </rtk-section-filter>
                 </div>
                 -->



                 <!-- head -->


                <@he.headmy>

                </@he.headmy>


                <div class="layout-columns">

                    <!-- order list -->
                    <div class="orders-list-block__wrap">
                        <div class="orders-list-block__wrap-inner">



                            <#list orders as order>
                            <div class="order-block" id=${order.id}>
                                <div class="header">

                                    <span class="info offers-count">
                                         1
                                     </span>


                                    <span class="budget-icon budget-category-65">

                                    </span>
                                    <div class="title">
                                        <a target="_self" href="/orders/${order.id}">${order.title}</a>
                                    </div>
                                </div>
                                <div class="details">
                                    <a class="as-text" target="_self" href="/orders/${order.id}">
                                        ${order.body}
                                    </a>
                                </div>


                        <div class="footer">
                            <div class="location ng-binding"><#if order.city??> ${order.city} </#if></div>
                            <rtk-order-status order="order" class="ng-isolate-scope">
<span class="status ng-active open" ng-messages="$ctrl.order" ng-class="{
    open: $ctrl.order.isOpen,
    rejected: $ctrl.order.isRejected
}">
    <!-- ngMessage: --><ng-message when="isOpen" class="ng-scope">
  ${order.status}

</ng-message>
    <!-- ngMessage: -->
    <!-- ngMessage: -->
    <!-- ngMessage: -->
</span></rtk-order-status>
                            <div class="created ng-binding">Добавлен <#if order.timeago??> ${order.timeago}</#if>.</div>
                        </div>


                            </div>
                            </#list>


                              <div class="pagination-wrapper">
                                  <!--  <@pagination.first />
                                  <@pagination.last /> -->
                                  <@pagination.previous />
                                  <@pagination.next />

                                    <ul class="pagination" rem-pagination items="li" active-item="li.active">
                                        <@pagination.numbers />
                                    </ul>
                                    <!---->
                              </div>

                         </div>
                    </div>




   </div>

</div>
</div>

</div>

<div id="rootFooter"></div>
</section>


<footer class="footer-block">
<div class="container">
<div class="footer-block__logo-block">
<a target="_self" href="/" class="footer-block__logo">
   <svg class="icon">
       <use xlink:href="#logo"></use>
   </svg>
   <span>Ремонтник.ру</span>
</a>
<a target="_self" href="/boards/add/" class="btn btn-footer">Добавить заказ</a>
</div>
<div class="footer-block__nav-block">
<ul>
   <li><a target="_self" href="/boards/my/">Заказы</a></li>
   <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>
   <li><a target="_self" href="/forum/">Сообщество</a></li>
</ul>
</div>
<div class="footer-block__nav-block long">
<ul>
   <li><a target="_self" href="/pages/customers">Как это работает?</a></li>

   <li><a target="_self" href="/dogovor">Пользовательское соглашение</a></li>
</ul>
</div>
<div class="footer-block__feedback-block">
<div class="footer-block__feedback">
   <a target="_self" href="/pages/about">О&nbsp;проекте</a>
   <a target="_self" href="/pages/contacts">Связаться</a>
</div>
<div class="footer-block__socials">
   <a target="_self" href="https://vk.com/remontnik_ru" class="vk">
       <svg class="icon">
           <use xlink:href="#vkontakte"></use>
       </svg>
   </a>
   <a target="_self" href="https://www.instagram.com/remontnik.ru/" class="ig">
       <svg class="icon">
           <use xlink:href="#instagram"></use>
       </svg>
   </a>
   <a target="_self" href="https://www.facebook.com/remontnik.ru/" class="fb">
       <svg class="icon">
           <use xlink:href="#facebook"></use>
       </svg>
   </a>
</div>
</div>
</div>
</footer>



<script>var requirejs = { waitSeconds: 0 }</script>
<script src="/resources/js/app.min/vendor/require.js?1.2.778"
data-main="/resources/js/app.min/main_redesign.js?1.2.778"></script>








<div id="outdated"></div>
<script src="/resources/outdated-browser/outdatedbrowser/outdatedbrowser.min.js"></script>
<script>
outdatedBrowser({
lowerThan: 'IE11',
languagePath: '/resources/outdated-browser/outdatedbrowser/lang/ru.html'
});
</script>



</body>
</html>
