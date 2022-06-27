*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_2Valet_Mode.robot


*** Keywords ***

TC_Swipe_Valet

    swipe    580    1102    518    474

TC_Activate_Quick_Mode

    tap    ${dash_valet_quick}
    sleep    10

TC_Activate_Custom_Mode

    tap    ${dash_valet_custom}
    sleep    10

TC_Activate_Custom_Mode_First_time

    tap    ${dash_valet_custom}
    element should contain text    ${dash_valet_popup}    You don´t have a custom valet mode set for vehicle selected. Would you like to select a range of values for your custom valet mode
    tap    ${dash_valet_btn_yes_valet}
    sleep    10

TC_Edit_CUstom_mode

    #wait until page contains element    ${dash_valet_edit}
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
    sleep    4


