*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Dashboard_Alerts.robot

*** Test Cases ***
TC_Dashboard_Alert_Module
    Open_Ikon_Connect
    Terms
    Login
    Dashboard_Alerts_Validations
    sleep    5
    Dashboard_Boundary_Alerts
    go back
    Dashboard_Speeding_Alerts
    close application
