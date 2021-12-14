*** Settings ***
Documentation    Suite description

*** Keywords ***
Login
    [arguments]     ${email}    ${pw}
    Open Browser    https://app.deriv.com/account/api-token   chrome
    set window size    1680    1380
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
#    wait until page contains element    dt_login_button    60
    wait until page contains element    ${email_field}    15
    input text    ${email_field}        ${email}
    input text    ${password_field}    ${pw}
    click element    ${login_outh_button}
#    Close Browser

Click_Checkbox
    wait until page contains element  ${read_checkbox}
    click element  ${read_checkbox}
    click element  ${payment_checkbox}
    click element  ${trading_information_checkbox}
    click element  ${trade_checkbox}
    click element  ${admin_checkbox}

Input_Token
    input text  ${token_input}  hello
    element should be enabled   ${create_button}
    click element   ${create_button}
    wait until page contains element  ${token}
    page should contain element  ${delete_button}