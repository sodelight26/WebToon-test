*** Settings ***
Library    SeleniumLibrary
Documentation    Test scrolling to view the cartoon up-down and below the first page.  
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Test Scroll Cartoon Page
    Open Browser To Webtoon Page
    Maximize Browser Window
    Scroll Page Down
    Sleep    2s
    Scroll Page Up
    Sleep    2s
    Scroll Element Into View    xpath=//*[@id="footer"]
    Sleep    2s

*** Keywords ***
Scroll Page Down
    [Documentation]    Scrolls the web down.
    Execute JavaScript    Window.scrollTo(0, document.body.scrollHeight);

Scroll Page Up
    [Documentation]    Scrolls the web page up.
    Execute JavaScript    window.scrollTo(0, -document.body.scrollHeight);
