*** Settings ***
Library           SeleniumLibrary
Library    Telnet
Resource    ../../resoures/keywords.robot
Resource    ../../resoures/variables.robot
Resource    ../../tests/selectcontent_test/test_scroll_cartoon_page.robot

*** Test Cases ***
Test Responsive Webtoon page iPhone SE
    Open Browser To Webtoon Page
    Set Responsive iPhone SE
    Wait Until Page Contains Element    xpath=//*[@id="header"]/div
    Scroll To Bottom
    
*** Keywords ***
Scroll To Bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
Set Responsive iPhone SE
    Set Window Size    375    667
Set Responsive iPhone XR
    Set Window Size    414    896
Set Responsive iPhone 12 Pro
    Set Window Size    390    844
Set Responsive iPhone 14 Pro Max
    Set Window Size    430    932
Set Responsive Pixel 7
    Set Window Size    412    915
Set Responsive Samsung galaxy S8+
    Set Window Size    360    740
Set Responsive Samsung galaxy S20 Uitra
    Set Window Size    412    915
Set Responsive iPad Air
    Set Window Size    820    1180
Set Responsive iPad Pro
    Set Window Size    1024    1366
Set Responsive Asus Zenbook Fold
    Set Window Size    853    1280
