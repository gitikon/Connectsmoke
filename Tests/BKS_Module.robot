*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_BKS.robot
Resource     ../Resources/Keywords/K_Dashboard.robot
Resource     ../Resources/Keywords/K_Login.robot
Library    ScreenCapLibrary

*** Test Cases ***
Automation_Preferences_Testcases
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    Login
    TC_Enter_to_My_Dealer
    TC_BKS_Services
    #TC_BKS_First_Appoinment
    #TC_BKS_Second_Appoinment
    close application
    #stop video recording

    #udid 00008020-001450AA3EE8003A    G0NXV7PLKPFP