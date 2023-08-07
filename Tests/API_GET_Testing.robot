*** Settings ***
Library    RequestsLibrary
*** Variables ***
${baseURL}=     http://216.10.245.166
${resource1}=    /Library/GetBook.php?ID=rvm152414
${resource2}=    /Library/GetBook.php?AuthorName=aramya
*** Test Cases ***
TC01 Validating get request by using ID
    Validation of get book request by using ID
TC02 Validating get request by using Name
    Validation of get book request by using Name
*** Keywords ***
Validation of get book request by using ID
    create session  Mysession     ${baseURL}
    ${res}=     GET On Session  Mysession    ${resource1}
    Log To Console    ${res.status_code}
Validation of get book request by using Name
    Create Session    Mysession     ${baseURL}
    ${res1}=    GET On Session    Mysession    ${resource2}
    Log To Console    ${res1.json()}
    Log To Console    ${res1.content}
    Log To Console    ${res1.json()[0]}
    Log To Console    ${res1.json()[0]["isbn"]}
    Should Be Equal As Strings    ${res1.json()[0]["isbn"]}     rvm




