*** Settings ***
Variables      ../Variables/Testdata.yaml
Library    SeleniumLibrary
Variables    ../Pages/Login_Page_Locators.yaml

*** Variables ***
#${browser}=     Chrome
#${URL}=     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${Username}=    Admin
#${Password}=    admin123
*** Keywords ***
Launch the Orange HRM application
    Create Webdriver    ${browser}
    Go To    ${URL}
    Maximize Browser Window
    Wait Until Element Is Visible    ${loginbtn}     ${mediumwait}
Login into application with valid credentials
    Input Text    ${unametxt}     ${Username}
    Input Text    ${ptxt}     ${Password}
    Click Element    ${loginbtn}
Login into application with invalid credentials
    Input Text    ${unametxt}     ${invUsername}
    Input Text    ${ptxt}     ${invPassword}
    Click Element    ${loginbtn}
Verify error message for invalid login
    Wait Until Element Is Visible    ${invalidlbl}    ${mediumwait}
    ${errormsg}=    Get Text    ${invalidlbl}
    Should Contain    ${errormsg}     ${actualerror}
Verify the login success validation
    Wait Until Element Is Visible     ${dashboardlbl}      ${mediumwait}
    ${dashboard}=   Get Text    ${dashboardlbl}
    Should Be Equal    ${dashboard}     ${dashboardtxt}


