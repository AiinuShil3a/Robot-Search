*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library    XML

*** Test Cases ***
TC2001 ค้นหาที่พักโดยค้นหาจากชื่อที่จังหวัด
    [Tags]    PassSearchProvince
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    InputNameProvince
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    Wait Until Element Contains    ${Province-HomeStay}    ${InputSearchProvince}     10s  
    Element Should Contain    ${Province-HomeStay}   ${InputSearchProvince} 
    Capture Screenshot
    Close Browser