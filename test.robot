*** Settings ***
Library     SeleniumLibrary
Resource    common.robot
Resource    switch_demo.robot
Resource    buy_volatillity.robot
Resource    buy_AUD_USD.robot
Resource    Check_Error.robot
Resource    buy_volatility_50.robot

*** Variable ***
#Login
${login_button}  dt_login_button
${email_field}  name=email
${password_field}   //*[@type="password"]
${login_outh_button}    //*[text()="Log in"]

#Switch Account
${switch_account_button}      //*[@id="dt_core_account-info_acc-info"]
${demo_switch}      //*[@id="dt_core_account-switcher_demo-tab"]
${demo_account}     //*[@class="acc-switcher__id"]

#Buy Volatility
${volatility_select}   //*[@class="cq-menu-btn"]
${select_market}     //*[text()="Synthetic Indices"]
${volatility_10_1s}    //*[contains(@class, "item--1HZ10V")]
${buy_contract}     //*[@class="btn-purchase btn-purchase--1"]
${money_field}      //*[@class="dc-input-wrapper__input input--has-inline-prefix input trade-container__input"]

#Buy Forex AUD/USD
${market_forex}     //*[text()="Forex"]
${aud_usd}  //*[contains(@class, "item--frxAUDUSD")]
${bet_type}  //*[@class="contract-type-widget__display"]
${trade_type}   //*[@id="dc_options_link"]
${date_input}   //*[@class="dc-input__field"]
${high_low}     //*[@id="dt_contract_high_low_item"]
${payout_button}    //*[@id="dc_payout_toggle_item"]
${payout_input}     //*[@id="dt_amount_input"]
${lower_button}  //*[@class="btn-purchase btn-purchase--2"]

#Error Checking
${barrier_input}  //*[@id="dt_barrier_1_input"]
${disable_lower_button}  //*[@id="trade_container"]/div[4]/div/div/fieldset[2]/div/div[2]
${error_pop_up}  //*[@id="trade_container"]/div[4]/div/div/fieldset[2]/div/div[2]/div[2]/div[1]/div/div/div/div[2]

#Buy Volatility 50
${volatility_50}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[7]
${select_all}   //*[@id="dc_all_link"]
${select_multiplier}  //*[@id="dt_contract_multiplier_item"]
${buy_rise_multiplier}  //*[@id="dt_purchase_multup_button"]
${take_profit_checkbox}     //*[@class="dc-text dc-checkbox__label take_profit-checkbox__label"]
${take_profit_input}      //*[@id="dc_take_profit_input"]
${stop_loss_checkbox}   //*[@class="dc-text dc-checkbox__label stop_loss-checkbox__label"]
${stop_loss_input}      //*[@id="dropdown-display"]
${deal_cancelation_checkbox}  //*[@class="dc-text dc-checkbox__label"]
${deal_cancelation_selection}   //*[text()="60 minutes"]
${multiplier_selection_button}     //*[text()="x20"]
${multiplier_selection}     //*[@class="dc-list dc-list--left"]
${stake_input}      //*[@id="dt_amount_input"]
${cancel_fee}   //*[@class="trade-container__price-info-currency"]
${enabled_down_button}  //*[@id="dt_purchase_multdown_button"]
${x20}      //*[@id="20"]
${x40}      //*[@id="40"]
${x60}      //*[@id="60"]
${x100}     //*[@id="100"]
${x200}     //*[@id="200"]
${error_exceed_max}     //*[@class="dc-popover__bubble dc-popover__bubble--error"]
${error_below_min}      //*[@class="trade-container__tooltip dc-tooltip dc-tooltip--error"]
${add_button}   //*[@id="dt_amount_input_add"]
${minus_button}    //*[@id="dt_amount_input_sub"]
${5min}     //*[@id="5m"]
${10min}     //*[@id="10m"]
${15min}     //*[@id="15m"]
${30min}     //*[@id="30m"]
${60min}     //*[@id="60m"]
*** Keyword ***

*** Test Cases ***
Open Deriv
    Login   ${VALID_USER}   ${VALID_PASS}
    Switch_Demo
    Buy_Volatility_10
    Buy_AUD_USD
    Check_Barrier_Error
    Buy_Volatility_50