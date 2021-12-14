*** Settings ***
Documentation    Suite description

*** Keywords ***
Buy_Volatility_50
    #to be deleted
    click element  ${volatility_select}
    click element   ${select_market}
    wait until page contains element  ${volatility_50}
    click element  ${volatility_50}
    wait until page contains element  ${buy_contract}
    click element  ${bet_type}
    wait until page contains element  ${select_all}
    click element  ${select_all}
    wait until page contains element  ${select_multiplier}
    click element  ${select_multiplier}
    wait until page contains element  ${buy_rise_multiplier}
    element should not be visible  ${payout_button}

    wait until page contains element  ${take_profit_checkbox}
    click element  ${take_profit_checkbox}
    click element  ${stop_loss_checkbox}
    page should contain element   ${take_profit_input}
    page should contain element   ${stop_loss_input}
    page should not contain element    ${deal_cancelation_selection}

    click element  ${deal_cancelation_checkbox}
    wait until page contains element  ${deal_cancelation_selection}
    page should contain element     ${deal_cancelation_selection}
#    page should not contain element   ${take_profit_input}
#    page should not contain element   ${stop_loss_input}

    wait until page contains element  ${multiplier_selection_button}
    click element  ${multiplier_selection_button}
    page should contain element  ${x20}
    page should contain element  ${x40}
    page should contain element  ${x60}
    page should contain element  ${x100}
    page should contain element  ${x200}


    ${stake_value}=     get element attribute   ${stake_input}  value
    ${stake_value_length}=      get length      ${stake_value}
    repeat keyword  ${stake_value_length}  press keys  ${stake_input}  BACKSPACE
    input text  ${stake_input}  0
    wait until page contains element  ${error_below_min}
    page should contain element  ${error_below_min}

    ${stake_value}=     get element attribute   ${stake_input}  value
    ${stake_value_length}=      get length      ${stake_value}
    repeat keyword  ${stake_value_length}  press keys  ${stake_input}  BACKSPACE
    input text  ${stake_input}  1
    wait until page contains element  ${enabled_down_button}
    page should contain element  ${enabled_down_button}

    ${stake_value}=     get element attribute   ${stake_input}  value
    ${stake_value_length}=      get length      ${stake_value}
    repeat keyword  ${stake_value_length}  press keys  ${stake_input}  BACKSPACE
    input text  ${stake_input}  2000
    wait until page contains element  ${enabled_down_button}
    page should contain element  ${enabled_down_button}


    ${stake_value}=     get element attribute   ${stake_input}  value
    ${stake_value_length}=      get length      ${stake_value}
    repeat keyword  ${stake_value_length}  press keys  ${stake_input}  BACKSPACE
    input text  ${stake_input}  2001
    wait until page contains element  ${error_exceed_max}
    page should contain element  ${error_exceed_max}

    ${stake_value}=     get element attribute   ${stake_input}  value
    ${stake_value_length}=      get length      ${stake_value}
    repeat keyword  ${stake_value_length}  press keys  ${stake_input}  BACKSPACE
    input text  ${stake_input}  1
    click element  ${add_button}
    wait until page contains element  ${cancel_fee}  60
    ${value1}=  get text  ${cancel_fee}
    ${added_value}=  get element attribute  ${stake_input}  value

    click element  ${minus_button}
    wait until page contains element  ${cancel_fee}  60
    ${value2}=  get text  ${cancel_fee}
    ${minus_value}=  get element attribute  ${stake_input}  value

    should not be equal as strings  ${value1}  ${value2}
    should be equal as strings  ${added_value}  2
    should be equal as strings  ${minus_value}  1

    click element  ${deal_cancelation_selection}
    page should contain element  ${5min}
    page should contain element  ${10min}
    page should contain element  ${15min}
    page should contain element  ${30min}
    page should contain element  ${60min}
