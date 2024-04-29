*** Settings ***
library    SeleniumLibrary
Documentation    Test content search using actual search terms.
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Test content search 
    Open Browser To Webtoon Page
    Maximize Browser Window
    Click Element Search Text
    Input Search Term    ${search-term}
    Verity Search Results Displayed    ${expected_search}
    # Test Click First Search Result
    Verify content loaded Successfully    ${expected_content}   


*** Keywords ***
