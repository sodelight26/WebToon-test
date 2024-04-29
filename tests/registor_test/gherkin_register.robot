*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Register and Confirm Email
    Given Browser is open to register page 
    When Fill out information and apply for membership
    Then User Confirms Email Notification

*** Keywords ***
Browser is open to register page
    Open Browser    https://www.webtoons.com/member/join    ${BROWSER}

Fill out information and apply for membership
    Input Email For Register    sulkifreelaz@gmail.com 
    Input Password For Register    muo987789
    Confirm To Register    muo987789
    Nickname To Register    teeens63
    Click Signup Button

Click Signup Button
    Click Element    //a[contains(text(), 'สมัครตอนนี้')]
    

User Confirms Email Notification
    Wait Until Element Is Visible    css=.ly_sign_up    timeout=10s
    Click Button    css=.ly_sign_up.btn_type8
