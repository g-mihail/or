"use strict";require(["require","angular","SmartBanner"],function(e,t,n){function a(e){console&&console[console.info?"info":"log"](e)}function i(e){return window.rem&&window.rem[e]}var d=window.rem&&window.rem.mobileApp;d&&new n({icon:d.icon,title:d.title,author:"Remontnik.ru",button:"РћС‚РєСЂС‹С‚СЊ"});var s=i("sentryDsn");s&&e(["Raven"],function(e){e.config(s,{release:i("assetsVersion")||window.assetsVersion,whitelistUrls:[/remontnik\.ru/],includePaths:[/https?:\/\/(.+\.)?remontnik\.ru/]}).install()}),e(["app"],function(n){a("Ready..."),e(["common/remMonth.filter"],function(){function d(n){if(n.getElementById("app")){var d=i("require");e(d&&d()||[],function(){a("Go!"),t.bootstrap(n.getElementById("app"),["app"])})}else a("False start.......")}a("Steady..."),n.run(["$templateCache",function(e){e.put("rtk/uib-accordion-group.html",'\n<div class="panel-title" ng-click="toggleOpen()" uib-accordion-transclude="heading"><span uib-accordion-header></span></div>\n<div class="panel-collapse collapse in" uib-collapse="!isOpen" ng-transclude></div>'),e.put("uib/template/datepicker/datepicker.html",'\n<div class="datepicker" ng-switch="datepickerMode">\n    <div uib-daypicker ng-switch-when="day" tabindex="0"></div>\n    <div uib-monthpicker ng-switch-when="month" tabindex="0"></div>\n    <div uib-yearpicker ng-switch-when="year" tabindex="0"></div>\n</div>'),e.put("uib/template/datepicker/day.html",'\n<table role="grid" aria-labelledby="{{ ::uniqueId }}-title" aria-activedescendant="{{ activeDateId }}">\n    <thead class="datepicker-header">\n        <tr>\n            <th><span class="datepicker-prev" ng-click="move(-1)" tabindex="-1"></span></th>\n            <th colspan="{{ ::5 + showWeeks }}">\n                <span id="{{ ::uniqueId }}-title" role="heading" aria-live="assertive" aria-atomic="true" type="button" class="datepicker-title" tabindex="-1"\n                      ng-disabled="datepickerMode === maxMode"\n                      ng-click="toggleMode()">{{  \'{\' + title + \'}\'|remMonth  }}</span>\n            </th>\n            <th><span class="datepicker-next" ng-click="move(1)" tabindex="-1"></span></th>\n        </tr>\n        <tr class="week">\n            <th ng-if="showWeeks" class="text-center"></th>\n            <th class="text-center" aria-label="{{ ::label.full }}"\n                ng-repeat="label in ::labels track by $index">{{ ::label.abbr }}</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr ng-repeat="row in rows track by $index">\n            <td ng-if="showWeeks" class="text-center h6"><em>{{ weekNumbers[$index] }}</em></td>\n            <td class="text-center" role="gridcell" id="{{ ::dt.uid }}"\n                ng-class="::dt.customClass"\n                ng-repeat="dt in row track by dt.date">\n                <button type="button" class="datepicker-day" tabindex="-1"\n                        ng-class="{selected: dt.selected, active: dt == activeDt}"\n                        ng-disabled="dt.disabled"\n                        ng-click="select(dt.date)"><span ng-class="::{\'muted\': dt.secondary}">{{ ::dt.label }}</span></button>\n            </td>\n        </tr>\n    </tbody>\n</table>')}]),i("isRedesign")?d(document):e(["domReady!"],d)})})});