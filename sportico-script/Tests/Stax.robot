*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://sportico-qa.softtek.store/customer/account/login/referer/aHR0cHM6Ly9zcG9ydGljby1xYS5zb2Z0dGVrLnN0b3JlLw%2C%2C/  chrome
    Wait Until Page Contains    SPORTICO
    Input Text     xpath=//input[@name="login[username]"]    ana.chessani@softtek.com
    Input Text     xpath=//input[@name="login[password]"]    Anita-9522
    click element  xpath=//button[@class="action login primary"]
    Sleep    3s

Agregar tercer producto
    Input Text    xpath=//input[@id="search"]    EG2000
    Click Button    xpath=//*[@id="search_mini_form"]/div[2]/button
    Sleep    5s
    Click Element    xpath=//*[@id="maincontent"]/div[3]/div[1]/div[4]/div[2]/ol/li/div/a/span/span/img
    Sleep    1s
    Click Element    xpath=//div[@index="3"]
    Click Element    xpath= //div[@option-label='Black']
    Click Button     xpath=//button[@id='product-addtocart-button']
    Sleep    5s

Agregar otro producto
    Input Text    xpath=//input[@id="search"]    3021296002
    Click Button    xpath=//*[@id="search_mini_form"]/div[2]/button
    Sleep    5s
    Click Element    xpath=//*[@id="maincontent"]/div[3]/div[1]/div[4]/div[2]/ol/li/div/a/span/span/img
    Sleep    1s
    Click Element    xpath=//div[@index="3"]
    Click Element    xpath= //div[@option-label='Black']
    Click Button     xpath=//button[@id='product-addtocart-button']
    Sleep    5s

Agregar ultimo producto
    Input Text    xpath=//input[@id="search"]    CD5463600
    Click Button    xpath=//*[@id="search_mini_form"]/div[2]/button
    Sleep    5s
    Click Element    xpath=//*[@id="maincontent"]/div[3]/div[1]/div[4]/div[2]/ol/li/div/a/span/span/img
    Sleep    1s
    Click Element    xpath=//div[@index="3"]
    Click Element    xpath= //div[@option-label='Black']
    Click Button     xpath=//button[@id='product-addtocart-button']
    Sleep    10s

Carrito de compras
    Click Element    xpath=//a[text()='Carrito de Compras']
    Sleep    10s
    Click Element    xpath=//*[@id="block-shipping"]/div[1]
    Sleep    5s
    Click Element    xpath=//*[@id="s_method_flatrate_flatrate"]
    Sleep    5s
    Click Button     xpath=//*[@id="maincontent"]/div[3]/div/div[4]/div[1]/ul/li[1]/button
    Sleep    15s
    Click Button     xpath=//*[@id="shipping-method-buttons-container"]/div/button
    BuiltIn.Sleep    10s

Pago en CheckOut con Tarjeta Master Card
    Click Element    xpath=//input[@id='paypal_express']
    Sleep    2s
    Click Button     xpath=//*[@id="checkout-payment-method-load"]/div/div/div[3]/div[2]/div[3]/div/button
    Sleep    5s
    Input Text     xpath=//*[@id="email"]    sb-a9471d3181991@personal.example.com
    Input Text    xpath=//*[@id="password"]   admin123

    Click Button    xpath=//button[@id='btnLogin']
    Sleep    15s
    Click Button    xpath=//*[@id="confirmButtonTop"]

    Sleep    10s

    Close Browser

*** Keywords ***
