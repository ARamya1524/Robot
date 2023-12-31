*** Settings ***
Resource    ../Pages/Login_Page.robot
*** Test Cases ***
TC01 Login with valid credentials
    [Tags]      Smoke       Regression
    Launch the Orange HRM application
    Login into application with valid credentials
    Verify the login success validation
    Close Browser
TC02 Login with invalid credentails
    [Tags]      Sanity
    Launch the Orange HRM application
    Login into application with invalid credentials
    Verify error message for invalid login
    Close Browser