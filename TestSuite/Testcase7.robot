*** Settings ***
Resource    ../Resources/Resource.robot
*** Test Cases ***
Login
        Login

AddToCart
        AddToCart

*** Keywords ***

Login
        [Setup]     Launch Browser
        [Teardown]      Close the browser
        Log To Console    logging to the application
        Log To Console    user enters the username
        Log To Console   user enters the password
        Log To Console   user clicks on the login button
        Log To Console    user is navigated to homepage


AddToCart
        [Setup]     Launch Browser
        [Teardown]      Close the browser
        Log To Console    Adding products to cart
        Log To Console    user enters the username
        Log To Console   user enters the password
        Log To Console   user clicks on the login button
        Log To Console    user is navigated to homepage
        Log To Console    User adds the product to cart
        Log To Console    User validates that product is added to cart

Launch Browser
        Log To Console   launching the browser

Close the browser
        Log To Console    Closing the browser