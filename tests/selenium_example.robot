*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Google And Find BBC
    Open Browser To Google
    Search For bbc
    Result Should Contain bbc

*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.co.uk    browser=chrome
    Google Should Be Open

Search For bbc
    Input Text    q   bbc
    Press Key     q   \\13

Result Should Contain bbc
    Wait Until Page Contains    www.bbc.co.uk   10 s

Google Should Be Open
    Location Should Contain    www.google.co.uk
