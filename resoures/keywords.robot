*** Settings ***
Documentation        A Resource file with reusable keywords and variables.
Library              SeleniumLibrary
Resource             ../resoures/variables.robot

*** Variables ***
${BROWSER}           Chrome
${DELAY}             0
${WEBTOON_URL}       https://www.webtoons.com/th/
${REG_URL}           https://www.webtoons.com/member/join

${VALID_EMAIL}       testemail@gmail.com
${VALID_PASSWORD}    textpassword
${RETYPE_PASSWORD}   
${NICKNAME}          

${search-term}       ยอดสถาปนิกผู้พิทักษ์อาณาจักร
${expected_search}   ยอดสถาปนิกผู้พิทักษ์อาณาจักร
${expected_content}  ยอดสถาปนิกผู้พิทักษ์อาณาจักร


*** Keywords ***
# webtoon paage
Open Browser To Webtoon Page
    Open Browser    ${WEBTOON_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Verify Webtoon Page

Verify Webtoon Page
    Page Should Contain    LINE WEBTOON
    Title Should Be    LINE WEBTOON - รวมสุดยอดเว็บตูนอันดับ 1 จากทั่วโลก

Go To Webtoon Page
    Go To    ${WEBTOON_URL}
    Verify Webtoon Page

# Login Page
Click Button_link For Login
    Click Element    css=.lk_login#btnLogin

Click Button Login With Email
    Click Element    css=.btn_sns._btnLoginEmail
Input Email For Login
    [Arguments]    ${email}
    Input Text    id=email_address    ${email}

Input Password For Login
    [Arguments]    ${password}
    Input Text    id=email_password    ${password}

Submit Credentials
    Click Button    xpath=//*[@id="formLogin"]/div[2]/button[2]

Home Page Should Be Open
    Title Should Be    LINE WEBTOON - รวมสุดยอดเว็บตูนอันดับ 1 จากทั่วโลก


# register page
Open Browser To Register Page
    Open Browser    ${WEBTOON_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Execute JavaScript    return document.title.includes('สมัครสมาชิก :: LINE WEBTOON')
Register Page Should Be Open
    Wait Until Page Contains    สมัครสมาชิก :: LINE WEBTOON


Go To Register Page
    Go To    https://www.webtoons.com/member/join    
    Register Page Should Be Open
Input Email For Register
    [Arguments]    ${email}
    Input Text    id=email    ${email}
Input Password For Register
    [Arguments]    ${password}
    Input Text    id=pw    ${password}
Confirm To Register
    [Arguments]    ${password}
    Input Text    id=retype_pw    ${password}
Nickname To Register
    [Arguments]    ${nickname}
    Input Text    id=nickname    ${nickname}
Click Button Signup
    Click Element    css=a.btn_type9.NPI\\=a\\:signup._join


# Verify Send confirmation email
#     Title Should Be    ส่งอีเมลยืนยัน


# Search
Click Element Search Text
    Click Element    xpath=//*[@id="header"]/div/div/a[3]
Input Search Term
    [Arguments]    ${search-term}
    Input Text    css=.input_search._txtKeyword    ${search-term}
                            
Verity Search Results Displayed
    [Arguments]    ${expected_search}
    Wait Until Page Contains    ${expected_search}

Test Click First Search Result
    Click Element    xpath=//a[contains(@class, '_searchItem') and contains(@class, '_immediateSearch') and contains(@class, 'NPI=a:akw,g:th_TH_th')]

Verify content loaded Successfully
    [Arguments]    ${expected_content}
    Wait Until Page Contains    ${expected_content}


