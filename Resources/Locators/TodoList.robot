*** Variables ***
${TODOLIST_INPUT}    //*[@id="new-task"]
${ADD_BUTTON}        //*[@id="add-item"]/button
${TODO_TAB}          //*[text()="To-Do Tasks"]
${COMPLETED_TAB}     //*[text()="Completed"]
${TODO_ITEM}         (//span[@class='mdl-checkbox__label' and starts-with(@id, 'text-')])[last()]
${TODO_DELETE}       (//button[@class='mdl-button mdl-js-button mdl-js-ripple-effect delete'])[last()]