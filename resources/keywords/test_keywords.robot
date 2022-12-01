*** Settings ***
Documentation    Test keywords for ...
Library          SeleniumLibrary
Library    example.py


Variables    resources/locators/test_locators.py

*** Keywords ***
Open App
    Set Screenshot Directory    screenshots
    Open Browser    ${URL}        chrome
    Maximize Browser Window

Close Cookies
    Wait Until Element Is Visible    ${COOKIE_BUTTON}       30

    Click Element    ${COOKIE_BUTTON}

    Function    fdgdfg      fdgdf   dfgdfh

Set User Name And Last Name
    Input Text    ${FIRST_NAME_FIELD}       abc
    Input Text    ${LAST_NAME_FIELD}       wer

Choose Gender
    ${genders}=     Get WebElements    ${GENDER}
    ${random_element}=      Evaluate    random.choice($genders)

    Click Element    ${random_element}

Choose Experience
    ${exp}=     Get WebElements    ${EXP}
    ${random_element}=      Evaluate    random.choice($exp)

    Click Element    ${random_element}

Choose Continent
    Select From List By Index       ${CONTINENTS}       3

Add Image
    Choose File    ${UPLOAD_IMAGE}      C:/Users/Home/Desktop/koło/pobrane.png

Check If Button Is Disabled
    ${status}=  Run Keyword And Return Status    Element Should Be Disabled    ${BUTTON}

    IF    ${status} == False
        Fail    BUTTON should be diabled !
    END
