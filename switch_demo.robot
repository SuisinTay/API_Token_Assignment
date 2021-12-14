*** Settings ***
Documentation    Suite description

*** Keywords ***
Switch_Demo
    wait until page does not contain element    //*[@class="chart-container__loader"]   20
    click element   ${switch_account_button}
    click element  ${demo_switch}
    click element  ${demo_account}