*** Settings ***
Variables      ../Variables/Testdata.yaml
Library    SeleniumLibrary
Variables    ../Pages/Login_Page_Locators.yaml

*** Keywords ***
Add user from Admin page
    Wait Until Element Is Visible    ${adminlbl}    10s
    Click Element    ${adminlbl}
    Wait Until Element Is Visible       ${addlbl}       10s
    Click Element    ${addlbl}
    #Click Element       ${userrole}
    #Select From List By Value   ${status}
    Sleep       10
    Click Element   ${employeedropdown}s
    Sleep       1
    Input Text    ${employeetxt}     ${employeename}
    Sleep       3
    Press Keys       None       ${down}
    Press Keys     None     ${enter}
    Sleep       3
    #Log To Console    ${username1}
    Input Text      ${username1}     ${usern}
    Input Text      ${password1}    ${pass}
    Input Text      ${confirmpassword}      ${pass}
    Click Element    ${save}



    
