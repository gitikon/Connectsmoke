*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Library    ScreenCapLibrary

*** Test Cases ***
Automation_Login_Testcases
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    TC_Login_with_empty_fields
    TC_Login_Incorrect_User_And_Password
    TC_Login_Correct_User_And_Incorrect_Password
    TC_Login_Incorrect_User_And_Correct_Password
    TC_Login_Credential_With_Keep_Me_Login
    TC_Login_Valid_Credentials_Without_Keep_Me_Login
    TC_Login_Valid_Credentials_Without_Cars


    #Login
    #Enter_To_Profile
    #Accept_User_Data
    #TC_Enter_Preferences
    #TC_Preferences_Privacy Policy
    #TC_Preferences_Battery_Switches
    close application
    #stop video recording