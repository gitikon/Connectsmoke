*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_New_Valet_Mode.robot
Resource     ../Resources/Keywords/K_Dashboard.robot
Resource     ../Resources/Keywords/K_Login.robot
Library    ScreenCapLibrary

*** Test Cases ***

Automation_Preferences_Testcases
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    Login
    TC_Swipe_Valet
    TC_Activate_Valet_Mode_First_Time
    TC_Activate_Valet_Mode
    TC_Edit_Valet_mode
    close application
    #stop video recording