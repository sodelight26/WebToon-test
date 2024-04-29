*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.webtoons.com/th/   # เปลี่ยน URL เป็นเว็บไซต์ที่ต้องการทดสอบ

*** Test Cases ***
Test SSL Security
    [Documentation]    Test the SSL security of the website.
    Open Browser    ${URL}    Chrome    # เปลี่ยนเป็น Browser ที่ต้องการทดสอบ
    Wait Until Page Contains    Secure    # ตรวจสอบว่าหน้าเว็บเป็นการเชื่อมต่อ SSL
    [Teardown]    Close Browser
