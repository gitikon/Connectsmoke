*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Preferences.robot
Resource     ../Resources/Keywords/K_Dashboard.robot
Resource     ../Resources/Keywords/K_Login.robot
Library    ScreenCapLibrary

*** Test Cases ***
Automation_Preferences_Testcases
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    Login
    Enter_To_Profile
    Accept_User_Data
    TC_Enter_Preferences
    #TC_Preferences_Privacy Policy (agregar boton para cerrar)
    #TC_Preferences_Battery_Switches
    TC_Preferences_Change_Pass_Same_Pass
    close application
    #stop video recording