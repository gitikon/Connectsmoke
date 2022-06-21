*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_2Valet_Mode.robot


*** Keywords ***

TC_Swipe_Valet

    FOR    ${i}    IN RANGE    0    2
        swipe    580    1782    518    474
    END

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

    sleep    10
    tap    ${dash_valet_edit}
