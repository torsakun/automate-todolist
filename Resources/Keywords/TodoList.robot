*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/RedefineWebKeywords.robot
Resource    ../Locators/TodoList.robot
Resource    ../Variables/Config.robot


*** Keywords ***
Open Browser ToDo List
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    ${title_actual}    Get Title
    ${h1_actual}    Get Text    xpath=//h1
    Should Be Equal As Strings    ${title_actual}    To-Do List
    Should Be Equal As Strings    ${h1_actual}    TO DO LIST

Add Todo Item
    [Arguments]    ${item}
    Web Input Text    ${TODOLIST_INPUT}    ${item}
    Web Click Button    ${ADD_BUTTON}

Verify Todo Item Added
    [Arguments]    ${item}
    Web Click Element    ${TODO_TAB}
    Web Element Should Contain    ${TODO_ITEM}    ${item}

Complete Todo Item
    [Arguments]    ${item}
    Web Click Element    ${TODO_TAB}
    Web Click Element    //span[starts-with(@id, 'text-') and @class='mdl-checkbox__label' and text()='${item}']

Verify Todo Item Completed
    [Arguments]    ${item}
    Web Click Element    ${COMPLETED_TAB} 
    Element Should Be Visible    (//span[@class='mdl-list__item-primary-content' and text()='${item}'])[last()]

Delete Todo Item
    [Arguments]    ${item}
    Web Click Element    ${TODO_TAB}
    Web Click Element    ${TODO_DELETE} 
    
Verify Todo Item Deleted
    [Arguments]    ${item}
    Element Should Not Be Visible    //*[contains(text(),"${item}")]


Delete Completed Item
    [Arguments]    ${item}
    Web Click Element    ${COMPLETED_TAB} 
    Web Click Element    //span[@class='mdl-list__item-primary-content' and text()='${item}']/following-sibling::button[@class='mdl-button mdl-js-button mdl-js-ripple-effect delete' and @id='1']

Verify Completed Item Deleted
    [Arguments]    ${item}
    Element Should Not Be Visible    //*[contains(text(),"${item}")]