*** Settings ***
Library    SeleniumLibrary
Resource    ../../resoures/keywords.robot
Documentation    Verify that the webtoon or category that the user clicks on loads and displays content correctly.

Suite Setup    Open Browser To Webtoon Page
Suite Teardown    Close Browser
Test Setup    Verify that the webtoon or category
Test Template    Verify Category       

*** Test Cases ***
Make Sure Category Is Romance  
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[1]/a    css=.sub_title.g_romance    โรแมนซ์    

Make Sure Category Is Romance Romantic Fantasy 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[2]/a    css=.sub_title.g_romantic_fantasy    โรแมนซ์แฟนตาซี 

Make Sure Category Is Drama 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[3]/a    css=.sub_title.g_drama   ดราม่า 

Make Sure Category Is Action 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[4]/a    css=.sub_title.g_action    แอกชัน 

Make Sure Category Is Drama 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[5]/a    css=.sub_title.g_fantasy   แฟนตาซี  

Make Sure Category Is LGBTQ+
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[6]/a    css=.sub_title.g_bl_gl    LGBTQ+ / Y 

Make Sure Category Is Comedy 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[7]/a    css=.sub_title.g_comedy    ตลก 

Make Sure Category Is Thriller  
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[8]/a    css=.sub_title.g_thriller    ระทึกขวัญ
 
Make Sure Category Is Horror 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[9]/a    css=.sub_title.g_horror    สยองขวัญ
 
Make Sure Category Is Novel 
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[10]/a    css=.sub_title.g_web_novel    นิยาย 

Make Sure Category Is local That
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[11]/a    css=.sub_title.g_local    เรื่องไทย

Make Sure Category Is local That
        xpath=//*[@id="content"]/div[1]/div[1]/ul/li[11]/a    css=.sub_title.g_local    เรื่องไทย    

*** Keywords ***
Verify that the webtoon or category 
    Maximize Browser Window
    Click Element    xpath=//*[@id="header"]/div/ul/li[2]/a

Verify Category
    [Arguments]    ${xpathh}    ${sub_title}    ${NAME_Category}   
    Click Element    ${xpathh}
    Wait Until Element Contains    ${sub_title}    ${NAME_Category}


