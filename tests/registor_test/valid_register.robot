*** Settings ***
Library    SeleniumLibrary
Documentation    The test suite contains valid test subscriptions.
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Valid Register
    Open Browser To Register Page
    Input Email For Register       sulkifreelaz@gmail.comW
    Input Password For Register    muo987789
    Confirm To Register    muo987789
    Nickname To Register    teen
    Click Button Signup
    # Verify Send confirmation email
