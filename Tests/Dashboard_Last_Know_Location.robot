*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Last_Known_Location.robot

*** Test Cases ***
Tc_Last_Know_Location
    Open_Ikon_Connect
    Terms
    Login
    Enter_to_last_known_location
    Center_green_locate
    Map_view
    street_view
    Locate_know
    close application