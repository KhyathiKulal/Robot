*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Scrolling

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Press Key    xpath://input[@id='datetimepicker1']    11
        Click Element    xpath://span[@class='flatpickr-day today']
        Sleep    2s

        Close Browser