*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Dashboard.robot
Resource    ../Resources/Keywords/K_MyDealer.robot
#Resource    ../Resources/Variables/V_Dashboard.robot

*** Test Cases ***
Mydealer_Module
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    Login
    Enter_To_MyDealer_Menu
    close application
    #stop video recording