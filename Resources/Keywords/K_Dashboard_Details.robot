*** Settings ***
Library     AppiumLibrary
Resource    ../Variables/V_Dashboard_Details.robot
*** Keywords ***
Dashboard_Details_Plate_Validations
    page should contain element    ${dash_details_details}
    tap    ${dash_details_details}
    sleep    2
    tap    ${dash_details_change_plate_field_1}
    sleep    2
    clear text    ${dash_details_change_plate_field_2}
    sleep    2
    input text    ${dash_details_change_plate_field_2}    exito-ikon
    sleep    2
    tap    ${dash_details_details_plate_field}
    sleep    7

Dashboard_Details_Plate_1_value
    tap    ${dash_details_change_plate_field_1}
    sleep    2
    tap    ${dash_details_change_plate_field_2}
    sleep    2
    clear text    ${dash_details_change_plate_field_2}
    sleep    2
    #SI JALAinput text    ${dash_details_change_plate_field_2}    L
    press keycode    30
    tap    ${dash_details_details_plate_field}
    sleep    7
    #click element    ${dash_details_details_plate_field}
    #sleep    3

Dashboard_Details_plate_dash_Validation
    tap    ${dash_details_change_plate_field_1}
    sleep    2
    tap    ${dash_details_change_plate_field_2}
    sleep    2
    clear text    ${dash_details_change_plate_field_2}
    sleep    2
    input text    ${dash_details_change_plate_field_2}    -
    #press keycode    30 #"Esto es un comentario y es la letra B"
    tap    ${dash_details_details_plate_field}
    sleep    7
    #click element    ${dash_details_details_plate_field}
    #sleep    3

Dashboard_Details_Special_Characters
    tap    ${dash_details_change_plate_field_1}
    sleep    2
    tap    ${dash_details_change_plate_field_2}
    sleep    2
    clear text    ${dash_details_change_plate_field_2}
    sleep    2
    input text    ${dash_details_change_plate_field_2}    |@#¢∞¬÷“”≠!"·$%&/()=?¿^*¨Ç
    #press keycode    30
    tap    ${dash_details_details_plate_field}
    sleep    7
    click element    ${dash_details_details_plate_field}
    sleep    3
    #page should contain element    ${license_plate_saved_message} no es posible porque aun
    #no se como se llama el componente es muy dificil checarlo cuando sale
    #press keycode    66


Dashboard_Details_Plate_empty
    tap    ${dash_details_change_plate_field_1}
    sleep    2
    tap    ${dash_details_change_plate_field_2}
    sleep    2
    clear text    ${dash_details_change_plate_field_2}
    sleep    2
    tap    ${dash_details_details_plate_field}
    sleep    7
    click element    ${dash_details_details_plate_field}
    sleep    3
