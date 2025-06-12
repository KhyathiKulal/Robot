*** Settings ***
Resource        ./../Resources/Resource.robot

*** Test Cases ***
Verify login functionality
        [Tags]      Sanity
        LoginIntoApplication