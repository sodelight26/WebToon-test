*** Settings ***
Library    SeleniumLibrary
Resource    ../../resoures/keywords.robot
*** Test Cases ***
Vaild Login
    Given Browwser is opened to login page
    When email "testemail.com" log with password "987789" 
    Then Home Page Should Be Open
*** Keywords ***
Browwser is opened to login page
    Open Browser To Webtoon Page
    Click Button_link For Login
    Click Button Login With Email

email "${email}" log with password "${password}" 
    Input Email For Login    ${email}
    Input Password For Login    ${password}
    Submit Credentials
