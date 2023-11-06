*** Settings ***
Resource    global-src/vary.robot
Suite Setup         Log    Suite Setup!
Suite Teardown      Log    Suite Teardown!
Task Setup          Log    Task Setup!
Task Teardown       Log    Task Teardown!
*** Variables ***
${STRING}=                  cat
${NUMBER}=                  ${1}
@{LIST}=                    2   3   4   6   3
&{DICTIONARY}=              string=${STRING}    number=${NUMBER}    list=@{LIST}

*** Test Cases ***
deneme

   &{DICTIONARY1}   Create Dictionary      string=${STRING}    number=${NUMBER}    list=@{LIST}
   FOR    ${key}    IN    &{DICTIONARY}
           log to console    \n${key[0]}:\t\t ${key[1]}
       END

Test message
    ${b} =    Returnmessages
     log    ${b}
*** Keywords ***
A keyword with any number of arguments
    [Arguments]    @{varargs}
    IF    True    RETURN
    Log    Any number of arguments: @{varargs}

Returnmessages
    ${a1}=      Set Variable               10
    return from keyword if  ${a1} >= 10    Hello
    return from keyword if  ${a1} < 10    Hi

