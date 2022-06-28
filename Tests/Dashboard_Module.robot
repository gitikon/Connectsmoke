*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Dashboard.robot

*** Test Cases ***
TC_Dashboard_Validations_Modules
    Open_Ikon_Connect
    Terms
    Login
    dashboard_validations
    close application