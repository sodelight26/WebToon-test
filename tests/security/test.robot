*** Settings ***
Library    SeleniumLibrary
Resource    ../../resoures/keywords.robot

*** Variables ***
${URL}    https://www.webtoons.com/th/genres/romance?sortOrder=READ_COUNT

*** Test Cases ***
tc-1
    Open Browser    https://www.webtoons.com/th/genres/romance?sortOrder=READ_COUNT    chrome
    test01
    Click Button_link For Login

*** Keywords ***
test01
    Click Element    xpath=//*[@id="btnLogin"]