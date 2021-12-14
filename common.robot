*** Settings ***
Documentation    Suite description

*** Keywords ***
Login
    [arguments]     ${email}    ${pw}
    Open Browser    https://app.deriv.com   chrome
    set window size    1680    1380
    wait until page does not contain element    dt_core_header_acc-info-preloader
#    wait until page contains element    dt_login_button    60
    click element   ${login_button}
    wait until page contains element    ${email_field}    15
    input text    ${email_field}        ${email}
    input text    ${password_field}    ${pw}
    click element    ${login_outh_button}
#    Close Browser