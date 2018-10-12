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
    <title ng-bind="head.pageTitle">Админка</title>

    <meta name="description" content="Заказ по ремонту и строительству.">
    <meta name="keywords" content="ремонт,строительство, заказ">

    <meta name="robots" content="index, follow">

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!--[if IE]>
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


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>







    <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>

    <script type="text/javascript">
           $(window).load(function(){

$(function () {
    $('#selectCategory').change(function() {
        getSelectedItem(this, null);
    });




    $('#button').click(function() {
        addRow('dataTable');
    });

jQuery(document).on('click', '.minus', function(){
	jQuery( this ).closest( 'tr' ).remove(); // удаление строки с полями
});


// формируем новые поля
jQuery('.plus').click(function() {
 addRow('dataTable');
});






    var jsonObj = {"Мелкие бытовые услуги":["Мастер на час", "Установка бытовой техники", "Установка и вскрытие замков","Уборка помещений, клининг","Эмалировка ванн"],"Комплексные работы":["Строительство домов и коттеджей", "Ремонт квартир и домов", "Ремонт кухни", "Кладка печей и каминов","Ремонт ванной","Ремонт офиса","Ремонт туалета","Строительство бань и саун","Строительство бассейнов","Строительство гаражей"],"Строительно-монтажные работы":["Остекление, окна, балконы", "Двери", "Кровельные работы", "Алмазная резка и сверление", "Бетонные работы","Бурение","Дорожное строительство","Заборы и ограждения","Земляные работы","Изоляционные работы","Кладочные работы","Ковка и литье","Лестницы","Металлоконструкции","Рольставни и секционные ворота","Сварочные работы","Снос и демонтаж","Срубы","Столярные и плотницкие работы","Фасадные работы","Фундамент"],"Отделочные работы":["Малярные и штукатурные работы", "Обойные работы", "Плиточные работы", "Гипсокартонные работы", "Лепнина", "Мозаичные работы","Напольные покрытия","Потолки","Роспись стен","Стеновые панели","Стяжка"],"Инженерные системы":["Водоснабжение и канализация", "Электромонтажные работы", "Сантехнические работы", "Альтернативные источники энергии","Газификация","Кондиционирование и вентиляция","Лифты и эскалаторы","Отопление","Системы видеонаблюдения","Теплый пол","Умный дом"],"Благоустройство территорий":["Уличное освещение","Озеленение"],"Проектирование и дизайн":["Дизайн интерьера","Инженерное проектирование","Геодезические работы"],"Обслуживание объектов":["Вывоз мусора","Грузоперевозки","Уборка территорий","Аренда оборудования","Аренда строительной техники","Высотные работы"],"Интерьер":["Мебель","Шторы и карнизы","Офисные перегородки","Декорирование интерьеров","Жалюзи"]};
var keys = Object.keys(jsonObj);
var category_dropdown = document.getElementById("selectCategory");

var getSelectedItem = function(element, row) {
    var e = element;
    var selectedCategory = e.options[e.selectedIndex].value;
    var sub_category_dropdown = (row != null ? row.getElementsByTagName("select")[1] : document.getElementById("selectSubCategory"));
    sub_category_dropdown.options.length=0;
    for (var i=0;i<jsonObj[selectedCategory].length;i++) {
        sub_category_dropdown[sub_category_dropdown.length] = new Option(jsonObj[selectedCategory][i],jsonObj[selectedCategory][i]);
    }
};

var addRow = function(tableID) {
        var table = document.getElementById(tableID);
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount-1);
        var colCount = table.rows[0].cells.length;


             var newcell = row.insertCell(0);
             newcell.innerHTML = "\n <select id=\"selectCategory\" name=\"scategory\">\n <option></option>\n <option value=\"Мелкие бытовые услуги\">Мелкие бытовые услуги</option><option value=\"Комплексные работы\">Комплексные работы</option><option value=\"Строительно-монтажные работы\">Строительно-монтажные работы</option><option value=\"Отделочные работы\">Отделочные работы</option><option value=\"Инженерные системы\">Инженерные системы</option><option value=\"Благоустройство территорий\">Благоустройство территорий</option><option value=\"Проектирование и дизайн\">Проектирование и дизайн</option><option value=\"Обслуживание объектов\">Обслуживание объектов</option><option value=\"Интерьер\">Интерьер</option></select>\n ";
             newcell.childNodes[0].selectedIndex = 0;

             var newcell = row.insertCell(1);
             newcell.innerHTML = "\n <select id=\"selectSubCategory\" name=\"ssubcategory\">\n <option></option>\n </select>\n "
             newcell.childNodes[0].selectedIndex = 0;

             var newcell = row.insertCell(2);
             newcell.innerHTML = "\n <span class=\"btn btn-danger minus pull-right\">–</span>\n "
             newcell.childNodes[0].selectedIndex = 0;


    var selects = row.getElementsByTagName("select");
    selects[0].addEventListener('change', function() { getSelectedItem(this, row) }, false);



};

    for (var keys in jsonObj) {
        category_dropdown[category_dropdown.length] = new Option(keys,keys);
    }
});

    });

</script>



 <script type="text/javascript">

         var mkLists = new Array(10)
        mkLists["Мелкие бытовые услуги"] = ["","Мастер на час", "Установка бытовой техники", "Установка и вскрытие замков","Уборка помещений, клининг","Эмалировка ванн"];
        mkLists["Комплексные работы"] = ["","Строительство домов и коттеджей", "Ремонт квартир и домов", "Ремонт кухни", "Кладка печей и каминов","Ремонт ванной","Ремонт офиса","Ремонт туалета","Строительство бань и саун","Строительство бассейнов","Строительство гаражей"];
        mkLists["Строительно-монтажные работы"] = ["","Остекление, окна, балконы", "Двери", "Кровельные работы", "Алмазная резка и сверление", "Бетонные работы","Бурение","Дорожное строительство","Заборы и ограждения","Земляные работы","Изоляционные работы","Кладочные работы","Ковка и литье","Лестницы","Металлоконструкции","Рольставни и секционные ворота","Сварочные работы","Снос и демонтаж","Срубы","Столярные и плотницкие работы","Фасадные работы","Фундамент"];
        mkLists["Отделочные работы"] = ["","Малярные и штукатурные работы", "Обойные работы", "Плиточные работы", "Гипсокартонные работы", "Лепнина", "Мозаичные работы","Напольные покрытия","Потолки","Роспись стен","Стеновые панели","Стяжка"];
        mkLists["Инженерные системы"]= ["","Водоснабжение и канализация", "Электромонтажные работы", "Сантехнические работы", "Альтернативные источники энергии","Газификация","Кондиционирование и вентиляция","Лифты и эскалаторы","Отопление","Системы видеонаблюдения","Теплый пол","Умный дом"];
        mkLists["Благоустройство территорий"]= ["","Уличное освещение","Озеленение"];
        mkLists["Проектирование и дизайн"]= ["","Дизайн интерьера","Инженерное проектирование","Геодезические работы"];
        mkLists["Обслуживание объектов"]= ["","Вывоз мусора","Грузоперевозки","Уборка территорий","Аренда оборудования","Аренда строительной техники","Высотные работы"];
        mkLists["Интерьер"]= ["","Мебель","Шторы и карнизы","Офисные перегородки","Декорирование интерьеров","Жалюзи"];



function mkChange(selectObj) {
  var id = selectObj.selectedIndex;
  var which = selectObj.options[id].value;

    carsList = mkLists[which];
  var carSelect = document.getElementById(selectObj.id.substr(0, selectObj.id.length - 14)+"selectSubCategory");

  while (carSelect.options.length > 0) {
    carSelect.remove(0);
  }
  var newOption;
  for (var i=0; i<carsList.length; i++) {
      newOption = document.createElement("option");
      newOption.value = carsList[i];
      newOption.text=carsList[i];
      try {
          carSelect.add(newOption);
      }
      catch (e) {
          carSelect.appendChild(newOption);
      }
  } //конец цикла
} //конец функции
</script>








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


        <@h.header>

    </@h.header>

    <script async src="/resources/js/app.min/mobile-menu.js?1.2.778"></script>
    </div>









    <div class="content-wrapper">






    <div class="container">

        <div class="orders-list-block">












        <div class="layout-columns">

            <!-- order list -->
            <div class="orders-list-block__wrap">
                <div class="orders-list-block__wrap-inner">



                    <h1 align="center"> Заявка на работу № ${order.id} </h1>
                    <form action="/mng/ord" method="post">
                        <input type="hidden" value="${_csrf.token}" name="_csrf">
                        <input type="text" value="${order.city}" name="city">
                        <input type="hidden" value="${order.id}" name="id">
                        <input type="text" value="${order.created}" name="created">
                        <input type="text" value="${order.price}" name="price">
                        <input type="text" value="${order.user.name}" name="user_id">
                        <input type="text" value="${order.title}" name="title">
                        <input type="text" value="${order.body}" name="body">
                        <select name="status">
                            <#list statuses as status>
                            <option value=${status} <#if (status == "${order.status}")> selected="selected"</#if> >${status}</option>
                    </#list>
                    </select>



                    <table id="dataTable">
                    <#list order.filters as filt>

                    <tr>
                        <td>
                            <select name="scategory" id="${filt.id}selectCategory"  onchange="mkChange(this);">
                                <option label="Мелкие бытовые услуги" <#if ("Мелкие бытовые услуги" == "${filt.category}")> selected="selected"</#if>  value="Мелкие бытовые услуги">Мелкие бытовые услуги</option>
                            <option label="Комплексные работы" <#if ("Комплексные работы" == "${filt.category}")> selected="selected"</#if>  value="Комплексные работы">Комплексные работы</option>
                        <option label="Строительно-монтажные работы" <#if ("Строительно-монтажные работы" == "${filt.category}")> selected="selected"</#if>   value="Строительно-монтажные работы">Строительно-монтажные работы</option>
                    <option label="Отделочные работы" <#if ("Отделочные работы" == "${filt.category}")> selected="selected"</#if> value="Отделочные работы">Отделочные работы</option>
                <option label="Инженерные системы"  <#if ("Инженерные системы" == "${filt.category}")> selected="selected"</#if> value="Инженерные системы">Инженерные системы</option>
            <option label="Благоустройство территорий"  <#if ("Благоустройство территорий" == "${filt.category}")> selected="selected"</#if> value="Благоустройство территорий">Благоустройство территорий</option>
            <option label="Проектирование и дизайн"  <#if ("Проектирование и дизайн" == "${filt.category}")> selected="selected"</#if> value="Проектирование и дизайн">Проектирование и дизайн</option>
        <option label="Обслуживание объектов"  <#if ("Обслуживание объектов" == "${filt.category}")> selected="selected"</#if> value="Обслуживание объектов">Обслуживание объектов</option>
        <option label="Интерьер"  <#if ("Интерьер" == "${filt.category}")> selected="selected"</#if>  value="Интерьер">Интерьер</option>
    <!-- <option value="${filt.category}">  ${filt.category} </option> -->
    </select>


    </td>
    <td>

        <#if ("Мелкие бытовые услуги" == "${filt.category}")>
        <select  name="ssubcategory"  id="${filt.id}selectSubCategory">

            <option  <#if ("Мастер на час" == "${filt.subcategory}")> selected="selected"</#if>   value="Мастер на час">Мастер на час</option>
        <option  <#if ("Установка бытовой техники" == "${filt.subcategory}")> selected="selected"</#if>  value="Установка бытовой техники">Установка бытовой техники</option>
    <option  <#if ("Установка и вскрытие замков" == "${filt.subcategory}")> selected="selected"</#if>  value="Установка и вскрытие замков">Установка и вскрытие замков</option>
<option  <#if ("Уборка помещений, клининг" == "${filt.subcategory}")> selected="selected"</#if>  value="Уборка помещений, клининг">Уборка помещений, клининг</option>
<option  <#if ("Эмалировка ванн" == "${filt.subcategory}")> selected="selected"</#if>  value="Эмалировка ванн">Эмалировка ванн</option>
</select>
</#if>
<!-- <option value="${filt.subcategory}">  ${filt.subcategory} </option> -->

<#if ("Комплексные работы" == "${filt.category}")>
<select  name="ssubcategory"   id="${filt.id}selectSubCategory">



    <option <#if ("Строительство домов и коттеджей" == "${filt.subcategory}")> selected="selected"</#if>  value="Строительство домов и коттеджей">Строительство домов и коттеджей</option>
<option  <#if ("Ремонт квартир и домов" == "${filt.subcategory}")> selected="selected"</#if>  value="Ремонт квартир и домов">Ремонт квартир и домов</option>
<option  <#if ("Ремонт кухни" == "${filt.subcategory}")> selected="selected"</#if>  value="Ремонт кухни">Ремонт кухни</option>
<option  <#if ("Кладка печей и каминов" == "${filt.subcategory}")> selected="selected"</#if>  value="Кладка печей и каминов">Кладка печей и каминов</option>
<option  <#if ("Ремонт ванной" == "${filt.subcategory}")> selected="selected"</#if>  value="Ремонт ванной">Ремонт ванной</option>
<option  <#if ("Ремонт офиса" == "${filt.subcategory}")> selected="selected"</#if>  value="Ремонт офиса">Ремонт офиса</option>
<option  <#if ("Ремонт туалета" == "${filt.subcategory}")> selected="selected"</#if>  value="Ремонт туалета">Ремонт туалета</option>
<option  <#if ("Строительство бань и саун" == "${filt.subcategory}")> selected="selected"</#if>  value="Строительство бань и саун">Строительство бань и саун</option>
<option  <#if ("Строительство бассейнов" == "${filt.subcategory}")> selected="selected"</#if>  value="Строительство бассейнов">Строительство бассейнов</option>
<option  <#if ("Строительство гаражей" == "${filt.subcategory}")> selected="selected"</#if>   value="Строительство гаражей">Строительство гаражей</option>


</select>
</#if>

<#if ("Строительно-монтажные работы" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">

    <option <#if ("Остекление, окна, балконы" == "${filt.subcategory}")> selected="selected"</#if>  value="Остекление, окна, балконы">Остекление, окна, балконы</option>
<option <#if ("Двери" == "${filt.subcategory}")> selected="selected"</#if>  value="Двери">Двери</option>
<option <#if ("Кровельные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Кровельные работы">Кровельные работы</option>
<option <#if ("Алмазная резка и сверление" == "${filt.subcategory}")> selected="selected"</#if>  value="Алмазная резка и сверление">Алмазная резка и сверление</option>
<option <#if ("Бетонные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Бетонные работы">Бетонные работы</option>
<option <#if ("Бурение" == "${filt.subcategory}")> selected="selected"</#if>  value="Бурение">Бурение</option>
<option  <#if ("Дорожное строительство" == "${filt.subcategory}")> selected="selected"</#if> value="Дорожное строительство">Дорожное строительство</option>
<option <#if ("Заборы и ограждения" == "${filt.subcategory}")> selected="selected"</#if> value="Заборы и ограждения">Заборы и ограждения</option>
<option <#if ("Земляные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Земляные работы">Земляные работы</option>
<option <#if ("Изоляционные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Изоляционные работы">Изоляционные работы</option>
<option <#if ("Кладочные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Кладочные работы">Кладочные работы</option>
<option <#if ("Ковка и литье" == "${filt.subcategory}")> selected="selected"</#if>  value="Ковка и литье">Ковка и литье</option>
<option <#if ("Лестницы" == "${filt.subcategory}")> selected="selected"</#if>  value="Лестницы">Лестницы</option>
<option <#if ("Металлоконструкции" == "${filt.subcategory}")> selected="selected"</#if>  value="Металлоконструкции">Металлоконструкции</option>
<option <#if ("Рольставни и секционные ворота" == "${filt.subcategory}")> selected="selected"</#if>  value="Рольставни и секционные ворота">Рольставни и секционные ворота</option>
<option <#if ("Сварочные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Сварочные работы">Сварочные работы</option>
<option <#if ("Снос и демонтаж" == "${filt.subcategory}")> selected="selected"</#if>  value="Снос и демонтаж">Снос и демонтаж</option>
<option <#if ("Срубы" == "${filt.subcategory}")> selected="selected"</#if>  value="Срубы">Срубы</option>
<option <#if ("Столярные и плотницкие работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Столярные и плотницкие работы">Столярные и плотницкие работы</option>
<option <#if ("Фасадные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Фасадные работы">Фасадные работы</option>
<option <#if ("Фундамент" == "${filt.subcategory}")> selected="selected"</#if>  value="Фундамент">Фундамент</option>
</select>
</#if>

<#if ("Отделочные работы" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">

    <option <#if ("Малярные и штукатурные работы" == "${filt.subcategory}")> selected="selected"</#if> value="Малярные и штукатурные работы">Малярные и штукатурные работы</option>
    <option <#if ("Обойные работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Обойные работы">Обойные работы</option>
    <option <#if ("Плиточные работы" == "${filt.subcategory}")> selected="selected"</#if> value="Плиточные работы">Плиточные работы</option>
    <option <#if ("Гипсокартонные работы" == "${filt.subcategory}")> selected="selected"</#if> value="Гипсокартонные работы">Гипсокартонные работы</option>
    <option <#if ("Лепнина" == "${filt.subcategory}")> selected="selected"</#if> value="Лепнина">Лепнина</option>
    <option <#if ("Мозаичные работы" == "${filt.subcategory}")> selected="selected"</#if> value="Мозаичные работы">Мозаичные работы</option>
    <option <#if ("Напольные покрытия" == "${filt.subcategory}")> selected="selected"</#if> value="Напольные покрытия">Напольные покрытия</option>
    <option <#if ("Потолки" == "${filt.subcategory}")> selected="selected"</#if> value="Потолки">Потолки</option>
    <option <#if ("Роспись стен" == "${filt.subcategory}")> selected="selected"</#if> value="Роспись стен">Роспись стен</option>
    <option <#if ("Стеновые панели" == "${filt.subcategory}")> selected="selected"</#if> value="Стеновые панели">Стеновые панели</option>
    <option <#if ("Стяжка" == "${filt.subcategory}")> selected="selected"</#if> value="Стяжка">Стяжка</option>
</select>
</#if>

<#if ("Инженерные системы" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">

    <option <#if ("Водоснабжение и канализация" == "${filt.subcategory}")> selected="selected"</#if> value="Водоснабжение и канализация">Водоснабжение и канализация</option>
    <option <#if ("Электромонтажные работы" == "${filt.subcategory}")> selected="selected"</#if> value="Электромонтажные работы">Электромонтажные работы</option>
    <option <#if ("Сантехнические работы" == "${filt.subcategory}")> selected="selected"</#if>  value="Сантехнические работы">Сантехнические работы</option>
    <option <#if ("Альтернативные источники энергии" == "${filt.subcategory}")> selected="selected"</#if> value="Альтернативные источники энергии">Альтернативные источники энергии</option>
    <option <#if ("Газификация" == "${filt.subcategory}")> selected="selected"</#if> value="Газификация">Газификация</option>
    <option <#if ("Кондиционирование и вентиляция" == "${filt.subcategory}")> selected="selected"</#if> value="Кондиционирование и вентиляция">Кондиционирование и вентиляция</option>
    <option <#if ("Лифты и эскалаторы" == "${filt.subcategory}")> selected="selected"</#if> value="Лифты и эскалаторы">Лифты и эскалаторы</option>
    <option <#if ("Отопление" == "${filt.subcategory}")> selected="selected"</#if> value="Отопление">Отопление</option>
    <option <#if ("Системы видеонаблюдения" == "${filt.subcategory}")> selected="selected"</#if> value="Системы видеонаблюдения">Системы видеонаблюдения</option>
    <option <#if ("Теплый пол" == "${filt.subcategory}")> selected="selected"</#if> value="Теплый пол">Теплый пол</option>
    <option <#if ("Умный дом" == "${filt.subcategory}")> selected="selected"</#if> value="Умный дом">Умный дом</option>
</select>
</#if>

<#if ("Благоустройство территорий" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">
    <option <#if ("Уличное освещение" == "${filt.subcategory}")> selected="selected"</#if> value="Уличное освещение">Уличное освещение</option>
    <option <#if ("Озеленение" == "${filt.subcategory}")> selected="selected"</#if> value="Озеленение">Озеленение</option>
</select>
</#if>

<#if ("Проектирование и дизайн" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">

    <option <#if ("Дизайн интерьера" == "${filt.subcategory}")> selected="selected"</#if> value="Дизайн интерьера">Дизайн интерьера</option>
    <option <#if ("Инженерное проектирование" == "${filt.subcategory}")> selected="selected"</#if> value="Инженерное проектирование">Инженерное проектирование</option>
    <option <#if ("Геодезические работы" == "${filt.subcategory}")> selected="selected"</#if> value="Геодезические работы">Геодезические работы</option>
</select>
</#if>

<#if ("Обслуживание объектов" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">

    <option <#if ("Вывоз мусора" == "${filt.subcategory}")> selected="selected"</#if> value="Вывоз мусора">Вывоз мусора</option>
    <option <#if ("Грузоперевозки" == "${filt.subcategory}")> selected="selected"</#if> value="Грузоперевозки">Грузоперевозки</option>
    <option <#if ("Уборка территорий" == "${filt.subcategory}")> selected="selected"</#if> value="Уборка территорий">Уборка территорий</option>
    <option <#if ("Аренда оборудования" == "${filt.subcategory}")> selected="selected"</#if> value="Аренда оборудования">Аренда оборудования</option>
    <option <#if ("Аренда строительной техники" == "${filt.subcategory}")> selected="selected"</#if> value="Аренда строительной техники">Аренда строительной техники</option>
    <option <#if ("Высотные работы" == "${filt.subcategory}")> selected="selected"</#if> value="Высотные работы">Высотные работы</option>
</select>
</#if>

<#if ("Интерьер" == "${filt.category}")>
<select id="${filt.id}selectSubCategory" name="ssubcategory">
    <option <#if ("Мебель" == "${filt.subcategory}")> selected="selected"</#if> value="Мебель">Мебель</option>
    <option <#if ("Шторы и карнизы" == "${filt.subcategory}")> selected="selected"</#if> value="Шторы и карнизы">Шторы и карнизы</option>
    <option <#if ("Офисные перегородки" == "${filt.subcategory}")> selected="selected"</#if> value="Офисные перегородки">Офисные перегородки</option>
    <option <#if ("Декорирование интерьеров" == "${filt.subcategory}")> selected="selected"</#if> value="Декорирование интерьеров">Декорирование интерьеров</option>
    <option <#if ("Жалюзи" == "${filt.subcategory}")> selected="selected"</#if> value="Жалюзи">Жалюзи</option>
</select>
</#if>

</td>
<td>
    <span class="btn btn-danger minus pull-right">&ndash;</span>
</td>
</tr>




</#list>


                            <TR><TD>
                                <select id="selectCategory" name="scategory" >
                                    <option></option>
                                </select>
                            </TD>
                                <TD>
                                    <select id="selectSubCategory" name="ssubcategory" >
                                        <option></option>
                                    </select>
                                </TD>
                                <TD>
                                    <span class="btn btn-danger minus pull-right">&ndash;</span>
                                </TD>
                            </TR>
                            <tr class="information_json_plus">
                                <td></td>
                                <td></td>
                                <td><span class="btn btn-success plus pull-right">+</span></td>
                            </tr>
                        </TABLE>





                    <button type="submit">Сохранить</button>
                    </form>




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







