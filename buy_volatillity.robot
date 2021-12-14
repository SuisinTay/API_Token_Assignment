*** Settings ***
Documentation    Suite description

*** Keywords ***
Buy_Volatility_10
    wait until page contains element  ${buy_contract}   60
    click element  ${volatility_select}
    click element   ${select_market}
    wait until page contains element  ${volatility_10_1s}
    click element  ${volatility_10_1s}
    wait until page contains element  ${buy_contract}   60
#    input text  ${money_field}  10
    wait until page contains element  ${buy_contract}  15
    click element  ${buy_contract}