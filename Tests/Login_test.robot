*** Settings ***
Resource    ../Pages/Login_Page.robot
Resource    ../Pages/Admin_Page_adduser.robot
Test Setup    Launch the Orange HRM application
Test Teardown    Close Browser
*** Test Cases ***
TC01 Login with valid credentials
    Login into application with valid credentials
    Verify the login success validation
TC02 Login with invalid credentails
    Login into application with invalid credentials
    Verify error message for invalid login
TC03 Add User
    Login into application with valid credentials
    Add user from Admin page