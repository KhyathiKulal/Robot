*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Verify login success with valid credentials

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select Frame    xpath://frame[@name='frame-bottom']
        Current Frame Should Contain    BOTTOM
        Unselect Frame
        Sleep    2s
        Select Frame    xpath://frame[@name='frame-top']
        Select Frame    xpath://frame[@name='frame-left']
        Current Frame Should Contain    LEFT
        Unselect Frame
        Select Frame    xpath://frame[@name='frame-top']
        Select Frame    xpath://frame[@name='frame-middle']
        Current Frame Should Contain    MIDDLE
        Unselect Frame
        Select Frame    xpath://frame[@name='frame-top']
        Select Frame    xpath://frame[@name='frame-right']
        Current Frame Should Contain    RIGHT
        Unselect Frame
        Sleep    2s
        Close Browser