*** Settings ***
Library    RequestsLibrary
Library    Collections
*** Variables ***
${baseURL}=     http://216.10.245.166
${resource}=    /Library/Addbook.php
*** Test Cases ***
TC01 Validating POST request
    Construct json body for POST request
    Hit the POST request
    Verify the status code
    Verify the response attribute
*** Keywords ***
Construct json body for POST request
    ${body}=    Create Dictionary   name=RVMbook    isbn=rvm1   aisle=1234    author=aramya
    Set Global Variable    ${body}
Hit the POST request
    Create Session    RVMSession    ${baseURL}
    ${res}=     POST On Session    RVMSession      ${resource}      json=${body}
    Set Global Variable    ${res}
Verify the status code
    Should Be Equal As Integers    ${res.status_code}   200
    #Log To Console    ${res.status_code}
Verify the response attribute
    #Log To Console    ${res.json()}
    Should Be Equal As Strings    ${res.json()["Msg"]}  successfully added




