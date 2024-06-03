*** Settings ***
Resource    ../Resources/Keywords/TodoList.robot
Resource    ../TestData/TodoList.robot
Test Setup          Open Browser ToDo List
Test Teardown       Keyword for teardown

*** Test Cases ***
TC01 Verify Add Todo Item
    [Documentation]    ทดสอบการ Add รายการใน Todo List
    [Tags]    TC01    regression    positive
    Add Todo Item    ${TC01}[Item]
    Verify Todo Item Added    ${TC01}[Item]

TC02 Verify Complete Todo Item
    [Documentation]    ทดสอบการ Checked ว่ารายการใน Todo List Completed
    [Tags]    TC02    regression    positive
    Add Todo Item    ${TC02}[Item]
    Verify Todo Item Added    ${TC02}[Item]
    Complete Todo Item    ${TC02}[Item]
    Verify Todo Item Completed    ${TC02}[Item]

TC03 Verify Delete Todo Item
    [Documentation]    ทดสอบการ Delete รายการใน Todo List
    [Tags]    TC03    regression    positive
    Add Todo Item    ${TC03}[Item]
    Verify Todo Item Added    ${TC03}[Item]
    Delete Todo Item    ${TC03}[Item]
    Verify Todo Item Deleted    ${TC03}[Item]

TC04 Verify Delete Completed Item
    [Documentation]    ทดสอบการ Delete รายการใน Completed
    [Tags]    TC04    regression    positive
    Add Todo Item    ${TC04}[Item]
    Verify Todo Item Added    ${TC04}[Item]
    Complete Todo Item    ${TC04}[Item]
    Delete Completed Item    ${TC04}[Item]
    Verify Completed Item Deleted    ${TC04}[Item]