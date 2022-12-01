*** Settings ***
Documentation    Test presentation
Library          SeleniumLibrary

Resource         resources/keywords/test_keywords.robot

*** Test Cases ***
Complete Form
    Open App
    Close Cookies
    Set User Name And Last Name
    Choose Gender
    Choose Experience
    Choose Continent
    Add Image
    Check If Button Is Disabled

    Sleep    200
