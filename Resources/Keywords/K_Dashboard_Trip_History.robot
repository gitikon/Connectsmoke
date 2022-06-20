*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Dashboard_Trip_History.robot
Resource     K_Login.robot
Resource    K_Dashboard.robot
Resource    K_Dashboard_Trip_History.robot

*** Test Cases ***
TC_Dashboard_Details
    Open_Ikon_Connect
    Terms
    Login
    swipe    580    1782    518    474
    tap     ${dash_trip_history_}
    sleep    5
