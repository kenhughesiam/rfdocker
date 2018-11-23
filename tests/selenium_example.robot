*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Google Devops And Find Eficode
    Open Browser To Google
    Search For bbc
    Result Should Contain bbc

*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.co.uk    browser=chrome
    Maximize Browser Window
    Google Should Be Open

Search For bbc
    Input Text    lst-ib    bbc
    Press Key    lst-ib    \\13

Result Should Contain bbc
    Wait Until Page Contains    www.bbc.co.uk   10 s

Google Should Be Open
    Location Should Contain    www.google.co.uk
