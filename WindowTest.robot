*** Settings ***
Documentation    Suite description
Library  AutoItLibrary

*** variables ***
${Window_title}  License Error
${window_text}  No
${Window_title2}  License Information
${id}  TEXT:OK
${TXT}  OK



*** Test Cases ***
Notepad
    Run_program
    Wait_Till_Window_Active_for_text ${Window_title} ${window_text}
    SEND_TEXT !n
    CLICK_CONTROL ${Window_title2} ${EMPTY} ${id} ${EMPTY}
#    Wait Till Window Active Untitled - Notepad
#    SEND_TEXT Welcometo auto it
#    CLOSE_WINDOW Untitled - Notepad
#    Wait_Till_Window_Active_for_text Notepad Save



*** keywords ***
Run_program
    Run  C:\\Program Files\\OpenAPC\\OpenEditor.exe

Wait Till Window Active ${text}
    WIN WAIT ACTIVE   ${text}

SEND_TEXT ${text}
    send  ${text}

CLOSE_WINDOW ${text}
    WIN CLOSE  ${text}

Wait_Till_Window_Active_for_text ${text} ${screentext}
    WIN WAIT ACTIVE   ${text}  ${screentext}

CLICK_CONTROL ${Window_title} ${window_text} ${id}
    control click  ${Window_title} ${window_text} ${id}

