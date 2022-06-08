*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Preferences.robot
#Resource    ../Resources/Variables/V_Preferences.robot
Resource    ../Resources/Keywords/K_Profile.robot
#Resource    ../Resources/Variables/V_Profile.robot
#Resource    ../Resources/Keywords/K_Last_Known_Location.robot
#Resource    ../Resources/Variables/V_Last_Known_Location.robot
Resource    ../Resources/Keywords/K_Dashboard.robot
#Resource    ../Resources/Variables/V_Dashboard.robot

*** Test Cases ***
Login_Dashboard
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    Login
    sleep    20
    close application
    #stop video recording