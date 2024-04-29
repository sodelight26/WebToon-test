*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Test Non-Existent Search term
    [Documentation]    Test conteent search using search terms do not exist in the system.
    Open Browser To Webtoon Page
    Maximize Browser Window
    Click Element Search Text
    Input Search Term    NonExistentSearchTerm
    Press Key    css=input.input_search._txtKeyword    \\13
    Wait Until Page Contains     แต่เราก็ยังไม่เจอสิ่งที่เกี่ยวข้องกับคำว่า