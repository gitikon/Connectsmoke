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
    TC_Preferences_Privacy Policy    #good
    TC_Preferences_Battery_Switches    #good
    TC_Preferences_Enter_to_Change_Password    #good
    TC_Preferences_Change_Pass_White_Blank    #good
    TC_Preferences_Change_Pass_Same_Pass    #good
    TC_Preferences_Change_CurrentPass_Different    #good
    TC_Preferences_Change_Confirm_Pass_Different    #good
    TC_Preferences_Change_Pass_Success    #good
    close application
    #stop video recording

    #udid 00008020-001450AA3EE8003A    G0NXV7PLKPFP