*** Settings ***



*** Test Cases ***
Test Case with Template
    [Template]    I Will use this template
    This is the first execution variable
    This is the second execution

Test using another Template
    3   5
    6   5
    40  45
    [Template]    Topla

Test Without Template
    Log    This test case doesn't use template!


*** Keywords ***
I Will use this template
    [Arguments]    ${templateVar1}
    Log    My variable value is ${templateVar1}

Use this template instead
    [Arguments]    ${anotherVar}
    Log    This is the other template value: ${anotherVar}

Topla
    [Arguments]    ${s1}    ${s2}
    ${mysum}=    Set Variable    ${${s1} + ${s2}}
    Log To Console    Toplam=${mysum}