*** Settings ***
Library    SeleniumLibrary
Documentation    Test suite with invalid login tests
Suite Setup    Open Browser To Webtoon Page
Suite Teardown    Close Browser
Test Setup    Go To Webtoon Page
Test Template    Login With Invalid Credentials should Fail   
Resource    ../../resoures/keywords.robot

*** Test Cases ***           EMAIL                   PASSWORD
Invalid Email                invalid                 ${VALID PASSWORD}
Invalid Password             ${VALID EMAIL}          invalid 
Invalid Email And Password   invalid                 invalid
Empty Email                  ${EMPTY}                ${VALID PASSWORD}
Empty Password               ${VALID PASSWORD}       ${EMPTY}
empty Email And Password     ${EMPTY}                ${EMPTY}

*** Keywords ***
Login With Invalid Credentials should Fail
    [Arguments]    ${email}    ${password}
    Click Button_link For Login
    Click Button Login With Email
    Input Email For Login    ${email}
    Input Password For Login    ${password}
    Submit Credentials