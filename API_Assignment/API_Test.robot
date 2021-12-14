*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    API_Login.robot

*** Variable ***
#Login
${email_field}  name=email
${password_field}   //*[@type="password"]
${login_outh_button}    //*[text()="Log in"]
${read_checkbox}    //*[text()="Read"]
${payment_checkbox}     //*[text()="Payments"]
${trading_information_checkbox}     //*[text()="Trading information"]
${trade_checkbox}       //*[text()="Trade"]
${admin_checkbox}   //*[text()="Admin"]
${token_input}      //*[@class="dc-input__field"]
${create_button}    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]
${token}    //*[@class="da-api-token__clipboard-wrapper"]
${delete_button}    //*[@class="dc-btn dc-btn--secondary dc-btn__small"]
*** Test Cases ***
Open Deriv
    Login   ${VALID_USER}   ${VALID_PASS}
    Click_Checkbox
    Input_Token