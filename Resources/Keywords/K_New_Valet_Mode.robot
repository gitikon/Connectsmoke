*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_New_2Valet_Mode.robot


*** Keywords ***

TC_Swipe_Valet

    log to console    "*******************START_Swipe_Valets*********************"
    swipe    580    1102    518    474
    log to console    "*******************END_Swipe_Valets*********************"

TC_Activate_Valet_Mode

    log to console    "*******************START_Activate_Valet_Mode*********************"
    wait until page contains element    ${DASH_SWITCH_VALET_MODE}
    tap    ${DASH_SWITCH_VALET_MODE}
    sleep    10
    log to console    "*******************END_Activate_Valet_Mode*********************"

TC_Activate_Valet_Mode_First_Time

    log to console    "*******************START_Activate_Valet_Mode_First_Time*********************"
    tap    ${DASH_SWITCH_VALET_MODE}
    element should contain text    ${dash_valet_popup}    You don´t have a custom valet mode set for vehicle selected. Would you like to select a range of values for your custom valet mode
    tap    ${dash_valet_btn_yes_valet}
    sleep    10
    tap    ${DASH_SWITCH_VALET_MODE}
    sleep    5
    log to console    "*******************END_Activate_Valet_Mode_First_Time*********************"

TC_Edit_Valet_mode

    log to console    "*******************START_Edit_Valet_mode*********************"
    wait until page contains element    ${dash_valet_edit}
    sleep    3
    tap    ${dash_valet_edit}
    sleep    3
    click element at coordinates    250    1689
    click element at coordinates    500    1977
    sleep    1
    click element at coordinates    400    1689
    click element at coordinates    700    1977
    sleep    1
    tap    ${DASH_VALET_CONFIRM_RANGE}
    sleep    2
    tap    ${dash_valet_edit}
    sleep    3
    click element at coordinates    80    1689
    click element at coordinates    75    1977
    sleep    2
    tap    ${DASH_VALET_CONFIRM_RANGE}
    sleep    15
    log to console    "*******************END_Edit_Valet_mode*********************"

