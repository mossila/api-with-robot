*** Settings ***
Library    Collections
Library    String
Library    HttpLibrary.HTTP
Library    RequestsLibrary

*** Variables ***
${url}      http://localhost:8080/

*** Test Cases ***
Get Ping
    # &{params}=    Create Dictionary   type=json
    ${resp}=    Call Ping   
    # ${params}
    # Log Json    ${resp.content}
    # Response Status should be Success  ${resp}
    # ${header}=    Get Json Value and convert to Object    ${resp.content}    /header
    # Response Should Contain Keys    ${header}    ${header_response}
    # ${stations}=    Get Json Value and convert to Object    ${resp.content}    /stations
    # ${len}=    Get Lenght    ${stations}
    # Run Keyword If     ${len} > 0    Response Should Contain Keys    @{stations}[0]    ${station_response}

    
*** Keywords ***
Call Ping
    Create Session   tmp    ${url}
    ${resp}=   Get Request    tmp   /Ping
    Return From Keyword  ${resp}