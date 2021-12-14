*** Settings ***
Library     String
Library  SeleniumLibrary
Documentation    Suite description

*** Keywords ***
Buy_AUD_USD
    wait until page contains element  ${buy_contract}   30
    click element  ${volatility_select}
    click element  ${market_forex}
    wait until page contains element  ${aud_usd}
    click element  ${aud_usd}
    wait until page contains element  ${buy_contract}   30
    click element  ${bet_type}
    wait until page contains element  ${trade_type}
    click element  ${trade_type}
    wait until page contains element  ${high_low}
    click element  ${high_low}
    clear element text  ${date_input}
    input text  ${date_input}  2
    wait until page contains element  ${payout_button}
    click element  ${payout_button}
    wait until page contains element  ${payout_input}
    ${current_value}=  get element attribute  ${payout_input}  value
    ${actual_value}=  get length  ${current_value}
    repeat keyword  ${actual_value}  press keys  ${payout_input}  BACKSPACE
#    ${value_length}=
    input text  ${payout_input}  15.50
    wait until page contains element  ${lower_button}
    click element  ${lower_button}