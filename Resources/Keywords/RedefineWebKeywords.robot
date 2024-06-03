*** Settings ***
Library     SeleniumLibrary
Resource    ../Locators/TodoList.robot
Resource    ../Variables/Config.robot

*** Keywords ***
Web Click Button
    [Arguments]    ${locator}    ${timeout}=${lo_general_timeout}
    [Documentation]    Click button identified by locator.
    ...    attributes for arbitrary elements are id and name. See introduction for details about locating elements.
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}
    SeleniumLibrary.Click Button    ${locator}

Web Input Text
    [Arguments]    ${locator}    ${text}    ${timeout}=${lo_general_timeout}
    [Documentation]    Types the given text into text field identified by locator.
    ...    See introduction for details about locating elements.
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}
    SeleniumLibrary.Input Text    ${locator}    ${text}

Web Element Should Contain
    [Arguments]    ${locator}    ${expected}    ${timeout}=${lo_general_timeout}
    [Documentation]    Verifies element identified by locator exactly contains text expected.
    ...    In contrast to Element Should Contain, this keyword does not try a substring match but an exact match on the element identified by locator.
    ...    message can be used to override the default error message.
    ...    Key attributes for arbitrary elements are id and name. See introduction for details about locating elements.
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}
    SeleniumLibrary.Element Should Contain    ${locator}    ${expected}

Web Click Element
    [Arguments]    ${locator}    ${timeout}=${lo_general_timeout}
    [Documentation]    Click element identified by locator.
    ...    attributes for arbitrary elements are id and name. See introduction for details about locating elements.
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}
    SeleniumLibrary.Click Element    ${locator}

Web Capture Screenshot
    [Arguments]    ${imageName}=${EMPTY}
    SeleniumLibrary.Capture Page Screenshot  ${imageName}${TEST_NAME}.png

Keyword for teardown
    Run Keyword If Test Failed    Web Capture Screenshot  ERROR:
    Run Keyword And Ignore Error    Run Keyword And Continue On Failure    Close Browser