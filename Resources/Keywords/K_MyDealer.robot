*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_MyDealer.robot

*** Keywords ***
TC_MyDealer_Hours_of_Operations
    tap    ${my_dealer_btn_hours_operation}
    sleep    4
    go back
    sleep    4

TC_MyDealer_Call_Service_Center
    tap     ${my_dealer_btn_call_service}
    sleep    4
    go back
    sleep    4

TC_MyDealer_Directions_To_Dealer
    tap     ${my_dealer_btn_direction_dealer}
    sleep    4
    go back
    sleep    4

TC_MyDealer_Roadside_Assitance
    tap     ${my_dealer_btn_roadside}
    sleep    4
    go back
    sleep    4