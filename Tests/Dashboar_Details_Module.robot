*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Dashboard_Details.robot

*** Test Cases ***
TC_Dashboard_Details
    Open_Ikon_Connect
    Terms
    Login
    Dashboard_Details_Plate_Validations
    Dashboard_Details_Plate_1_value
    Dashboard_Details_plate_dash_Validation
    Dashboard_Details_Special_Characters
    Dashboard_Details_Plate_empty
    close application
