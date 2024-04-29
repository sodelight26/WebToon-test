*** Settings ***
Library    SeleniumLibrary
Documentation    A test suite with a single test for valid logign.
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Valid Login
    Open Browser To Webtoon Page
    Click Button_link For Login
    Click Button Login With Email
    Input Email For Login       ${VALID EMAIL}
    Input Password For Login    ${VALID PASSWORD}
    Submit Credentials
    # Home Page Should Be Open
    [Teardown]    Close Browser
    