*** Settings ***
Library    SeleniumLibrary
Documentation    The test suite contains valid test subscriptions.
Resource    ../../resoures/keywords.robot

*** Test Cases ***
Valid Register
    Open Browser To Register Page
    Input Email For Register       testemail@gmail.comW
    Input Password For Register    987789
    Confirm To Register    987789
    Nickname To Register    teen
    Click Button Signup
    # Verify Send confirmation email
