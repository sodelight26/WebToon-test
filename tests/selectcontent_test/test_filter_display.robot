*** Settings ***
Library    SeleniumLibrary
Resource    ../../resoures/keywords.robot
Resource    ../login_test/valid_iogin.robot
Documentation    Test filtering for different display sequences.
Suite Setup    Open Browser To Webtoon Page
Suite Teardown    Close Browser
Test Setup    Settings Filtering
Test Template    Run Test

*** Test Cases ***
Displayed in order of popularity
    [Documentation]    Test if webtoons are displayed in order of popularity.
    Valid Login
    Filter Webtoons by Popularity
    # Validate Display Order
 Displayed in order of likes
    [Documentation]    Test if webtoons are displayed in order of likes.
    Valid Login
    Filter Webtoons by Likes
    # Validate Display Order

Displayed in order of date
    [Documentation]    Test if webtoons are displayed in order of date.
    Valid Login
    Filter Webtoons by Date
    # Validate Display Order


*** Keywords ***
Settings Filtering
    Maximize Browser Window

Valid Login
    Click Button_link For Login
    Click Button Login With Email
    Input Email For Login       ${VALID EMAIL}
    Input Password For Login    ${VALID PASSWORD}
    Submit Credentials

Run Test
    [Arguments]    ${fliter_type}
    Log    Filtering webtoons by ${fliter_type}

Filter Webtoons by Popularity
    Click Element    css=NPI=a:daily,g:th_TH_th            
    Click Element    xpath=//*[@id="dailyList"]/div[1]/ul   
    Wait Until Element Is Visible    xpath=//*[@id="dailyList"]/div[1]/ul/li[1]/a
    Click Element    xpath=//*[@id="dailyList"]/div[1]/ul/li[1]/a


Filter Webtoons by Likes
    Click Element    css=NPI=a:daily,g:th_TH_th     
    Click Element    xpath=//*[@id="dailyList"]/div[1]/ul
    Wait Until Element Is Visible    xpath=//*[@id="dailyList"]/div[1]/ul/li[2]/a
    Click Element    xpath=//*[@id="dailyList"]/div[1]/ul/li[2]/a

Filter Webtoons by Date
    Click Element    css=NPI=a:daily,g:th_TH_th     
    Click Element    xpath=//*[@id="dailyList"]/div[1]/ul
    Wait Until Element Is Visible    xpath=//*[@id="dailyList"]/div[1]/ul/li[3]/a
    Click Element    xpath=//*[@id="dailyList"]/div[1]/ul/li[3]/a

 # Validate Display Order