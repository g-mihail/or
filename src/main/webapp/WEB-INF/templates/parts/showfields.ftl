<#macro showfields>
<#include "security.ftl">
<#if known>


<#else>

<div class="add-order-block__row add-order-block__auth-block">
    <div class="social-fields">
        <label>Как к вам обращаться? (публикуется)</label>
        <div class="form-element" ng-class="orderForm.remValidator.errorClass('name')">
            <input name="name" required="" rem-capitalize-first="name" rem-cyrillic="true" ng-model="order.name" class="ng-pristine ng-isolate-scope ng-empty ng-invalid ng-invalid-required ng-valid-cyrillic ng-touched" type="text">
            <rtk-error-list form="orderForm" field="name" errors="{
                            cyrillic: 'Специальные символы и цифры недопустимы'
                        }" class="ng-isolate-scope">
                <!-- ngIf: $ctrl.isVisible --></rtk-error-list>
        </div>
        <label>Электронная почта (не публикуется)</label>
        <div class="form-element" ng-class="orderForm.remValidator.errorClass('email')">
            <input name="email" required="" ng-change="orderForm.remValidator.resetErrors()" ng-model="order.email" class="ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-email" type="email">
            <rtk-error-list form="orderForm" field="email" errors="{
                            email: 'Некорректный адрес электронной почты'
                        }" class="ng-isolate-scope">
                <!-- ngIf: $ctrl.isVisible --></rtk-error-list>
        </div>

        <label>Телефон (не публикуется)</label>
        <div class="user-phone">
            <rtk-first-phone form="orderForm" class="ng-isolate-scope">
                <fieldset class="form-element phone ng-pristine ng-invalid ng-invalid-required ng-valid-verification" ng-hide="$ctrl.verification.state" ng-class="phoneForm.remValidator.errorClass('phone', $ctrl.verification.isStarted || $ctrl.form.$submitted)" ng-disabled="$ctrl.verification.isLoading || $ctrl.loading" ng-form="phoneForm" rem-validation="{
             phone: {
                 'Неверный телефонный код': 'invalidCode'
             },
             nonFieldErrors: {
                 'Контакт принадлежит другому пользователю': 'occupied',
                 '/Expected available in (\\d+\\.?\\d*) seconds?\\./': 'throttled'
             }
          }">
                    <div class="controls">
                        <div class="phone-input ng-isolate-scope ng-empty ng-invalid ng-invalid-required" rem-phone-input="" field-name="phone" is-verified="$ctrl.form.$submitted ? $ctrl.verification.isValid : true" rem-enter="$ctrl.verification.sendCode(phoneForm)" ng-required="true" ng-change="phoneForm.remValidator.resetErrors()" ng-model="$ctrl.verification.phone" required="required"><div class="ui-select-container select2 select2-container ng-pristine ng-untouched ng-valid ng-scope ng-not-empty select2-container-disabled" ng-class="{'select2-container-active select2-dropdown-open open': $select.open, 'select2-container-disabled': $select.disabled, 'select2-container-active': $select.focus, 'select2-allowclear': $select.allowClear &amp;&amp; !$select.isEmpty()}" ng-model="tel.country" ng-change="updateModel()" ng-disabled="noCountries || disabled" ng-click="'touchend' === $event.type &amp;&amp; $event.preventDefault()" disabled="disabled"><a class="select2-choice ui-select-match ng-scope" ng-class="{'select2-default': $select.isEmpty()}" ng-click="$select.toggle($event)" aria-label="Select box select"><span ng-show="$select.isEmpty()" class="select2-chosen ng-binding ng-hide"></span> <span ng-hide="$select.isEmpty()" class="select2-chosen" ng-transclude=""><span ng-bind="'+' + $select.selected.phone_prefix" class="ng-binding ng-scope">+7</span></span> <!-- ngIf: $select.allowClear && !$select.isEmpty() --> <span class="select2-arrow ui-select-toggle"><b></b></span></a><div class="ui-select-dropdown select2-drop select2-with-searchbox select2-drop-active select2-display-none" ng-class="{'select2-display-none': !$select.open}"><div class="search-container ui-select-search-hidden" ng-class="{'ui-select-search-hidden':!$select.searchEnabled, 'select2-search':$select.searchEnabled}"><input autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" ng-class="{'select2-active': $select.refreshing}" role="combobox" aria-expanded="true" aria-owns="ui-select-choices-1" aria-label="Select box" class="ui-select-search select2-input ng-pristine ng-untouched ng-valid ng-empty" ng-model="$select.search" style="width: 10px;" type="search"></div><ul tabindex="-1" class="ui-select-choices ui-select-choices-content select2-results ng-scope" repeat="country in countries"><li class="ui-select-choices-group" ng-class="{'select2-result-with-children': $select.choiceGrouped($group) }"><div ng-show="$select.choiceGrouped($group)" class="ui-select-choices-group-label select2-result-label ng-binding ng-hide" ng-bind="$group.name"></div><ul id="ui-select-choices-1" ng-class="{'select2-result-sub': $select.choiceGrouped($group), 'select2-result-single': !$select.choiceGrouped($group) }" class="select2-result-single"><!-- ngRepeat: country in $select.items --><!-- ngIf: $select.open --><!-- end ngRepeat: country in $select.items --></ul></li></ul><div class="ui-select-no-choice"></div></div><ui-select-single></ui-select-single><input ng-disabled="$select.disabled" class="ui-select-focusser ui-select-offscreen ng-scope" id="{{ $select.focusserId }}" aria-label="{{ $select.focusserTitle }}" aria-haspopup="true" role="button" disabled="disabled" type="text"></div><input name="phone" ng-model="tel.number" ng-required="required" ng-disabled="disabled" ng-change="updateModel()" rem-outer-validation="isVerified" error-key="verification" mask="(999) 999-99-99" mask-restrict="reject" mask-clean="true" class="ng-pristine ng-untouched ng-isolate-scope ng-valid-verification ng-empty ng-invalid ng-invalid-required" required="required" type="tel"></div>
                        <button type="button" class="btn btn-blue sm auto2 hidden-sm" ng-class="($ctrl.verification.isLoading || $ctrl.loading) &amp;&amp; 'loading'" ng-click="$ctrl.verification.sendCode(phoneForm)">Подтвердить</button>
                    </div>
                    <rtk-error-list form="phoneForm" field="phone" condition="$ctrl.verification.isStarted || $ctrl.form.$submitted" errors="{
                        mask: 'Некорректный номер телефона',
                        invalidCode: 'Неверный код номера мобильного телефона',
                        verification: 'Номер телефона не подтвержден'
                    }" class="ng-isolate-scope">
                        <!-- ngIf: $ctrl.isVisible --></rtk-error-list>
                    <rtk-error-list form="phoneForm" condition="$ctrl.verification.isStarted || $ctrl.form.$submitted" errors="{
                        occupied: 'Этот номер телефона уже используется другим пользователем',
                        throttled: 'Превышен суточный лимит проверок'
                    }" class="ng-isolate-scope">
                        <!-- ngIf: $ctrl.isVisible --></rtk-error-list>
                    <button type="button" class="btn btn-blue sm auto2 hidden-lg" ng-class="($ctrl.verification.isLoading || $ctrl.loading) &amp;&amp; 'loading'" ng-click="$ctrl.verification.sendCode(phoneForm)">Подтвердить</button>
                </fieldset>
                <!-- ngIf: $ctrl.verification.state -->
                <!-- ngIf: $ctrl.verification.isSent --></rtk-first-phone>
            <p>Никаких лишних звонков! Ни&nbsp;один исполнитель не&nbsp;увидит ваш номер,
                пока вы&nbsp;сами не&nbsp;передадите его.</p>
        </div>

    </div>
    <div class="social-auth">
        <!-- ngIf: social.profile -->
        <!-- ngIf: !social.profile --><div ng-if="!social.profile" class="ng-scope">
        <h3>Или войти через</h3>
        <rtk-social-buttons on-click="social.auth($id)" class="ng-isolate-scope">
            <!-- ngRepeat: button in $ctrl.buttons --><rtk-social-button ng-repeat="button in $ctrl.buttons" ng-click="$ctrl.onClick({$id: button.id})" service="facebook" interactive="!!$ctrl.onClick" class="ng-scope ng-isolate-scope">
            <rtk-logo-button ng-class="$ctrl.service.cssClass + ($ctrl.interactive ? ' interactive' : '')" class="ng-isolate-scope  interactive fb">
                <svg>
                    <use xlink:href="#fb_flat" ng-href="#fb_flat"></use>
                </svg>
            </rtk-logo-button></rtk-social-button><!-- end ngRepeat: button in $ctrl.buttons --><rtk-social-button ng-repeat="button in $ctrl.buttons" ng-click="$ctrl.onClick({$id: button.id})" service="vkontakte" interactive="!!$ctrl.onClick" class="ng-scope ng-isolate-scope">
            <rtk-logo-button ng-class="$ctrl.service.cssClass + ($ctrl.interactive ? ' interactive' : '')" class="ng-isolate-scope  interactive vk">
                <svg>
                    <use xlink:href="#vkontakte" ng-href="#vkontakte"></use>
                </svg>
            </rtk-logo-button></rtk-social-button><!-- end ngRepeat: button in $ctrl.buttons --></rtk-social-buttons>
    </div><!-- end ngIf: !social.profile -->
    </div>
</div>




<div class="add-order-block__row">
    <div class="form-element agreement-block" ng-class="orderForm.remValidator.errorClass('agreement')">
        <div>
            <input type="checkbox" id="agreement" name="agreement" class="checkbox-custom" ng-model="isAgree" required>
            <label for="agreement" class="checkbox-custom-view">
                Я&nbsp;согласен с&nbsp;<a href="/dogovor/" target="_blank">правилами сервиса</a>
            </label>
        </div>
        <rtk-error-list form="orderForm" field="agreement" errors="{
                             required: 'Необходимо согласиться с правилами сервиса'
                         }"></rtk-error-list>
        <rtk-error-list form="orderForm"></rtk-error-list>
    </div>
</div>

</#if>
</#macro>