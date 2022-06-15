*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Dashboard.robot
#Resource    ../Resources/Keywords/K_MyDealer.robot
Resource    ../Resources/Keywords/K_Profile.robot
#Resource    ../Resources/Variables/V_Dashboard.robot

*** Test Cases ***
Mydealer_Module
    #Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open_Ikon_Connect
    Terms
    Login
    Enter_To_Profile
    Accept_User_Data
    #TC_Login_Valid_Credentials_Without_Keep_Me_Login
    #TC_Profile_Clear_Data
    #TC_Profile_Clear_Lastname
    #TC_Profile_Clear_Email
    #TC_Profile_Phone_Wrong_Number
    #TC_Profile_Phone_One_Digit
    #TC_Profile_Phone_Right_Number
    #TC_Profile_Phone_Different_Number
    #Enter_To_MyDealer_Menu
    #profile nombre en minusculas y mayusculas
    close application
    #stop video recording