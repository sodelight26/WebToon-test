*** Settings ***
Library    SeleniumLibrary
Documentation    Test suite for testing invalid subscriptions

Suite Setup    Open Browser To Register Page
Suite Teardown    Close Browser
Test Setup    Go To Register Page
Test Template    Register With Invalid credentials should fail
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Invalid Email    invalid    ${VALID_PASSWORD}    ${RETYPE_PASSWORD}    ${NICKNAME}  
Invalid Password    ${VALID_EMAIL}    invalid     ${RETYPE_PASSWORD}    ${NICKNAME}     
Invalid Retype   ${VALID_EMAIL}    ${VALID_PASSWORD}    invalid     ${NICKNAME}     
Invalid Nickname    ${VALID_EMAIL}    ${VALID_PASSWORD}    ${RETYPE_PASSWORD}    invalid
Invalid Email Password Retytpe Nickname    invalid    invalid    invalid    invalid   
Empty Email    ${EMPTY}    ${VALID_PASSWORD}    ${RETYPE_PASSWORD}    ${NICKNAME}        
Empty Email    ${VALID_EMAIL}    ${EMPTY}    ${RETYPE_PASSWORD}    ${NICKNAME}        
Empty Email    ${VALID_EMAIL}    ${VALID_PASSWORD}    ${EMPTY}    ${NICKNAME}        
Empty Email    ${VALID_EMAIL}   ${VALID_PASSWORD}    ${RETYPE_PASSWORD}    ${EMPTY} 
Empty Email Password Retytpe Nickname    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}       
    
*** Keywords ***
Register With Invalid credentials should fail
    [Arguments]    ${email}    ${password}    ${retype_password}   ${nickname}
    Input Email For Register    ${email}
    Input Password For Register    ${password}
    Confirm To Register    ${password}
    Nickname To Register    ${nickname}
    Click Button Signup
    Register Should Have Failed
Register Should Have Failed
    Page Should Contain Element    css=p.warning_txt._txtWarning
    Page Should Contain Element    css=.warning_level_area ._pwSafeIcon:nth-child(1)

    
    