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
    TC_MyDealer_Hours_of_Operations
    TC_MyDealer_Call_Service_Center
    TC_MyDealer_Directions_To_Dealer
    TC_MyDealer_Roadside_Assitance
    close application
    #stop video recording