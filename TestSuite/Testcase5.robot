*** Settings ***
Suite Setup     Open db connection
Suite Teardown      Close db connection
Resource        ../Resources/Resource.robot

*** Test Cases ***
Testcase1
        Log    Execute testcase1
*** Test Cases ***
Testcase2
        Log    Execute testcase2
*** Test Cases ***
Testcase3
        Log    Execute testcase3