*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource     ../Resources/Keywords/K_Dashboard.robot
Resource     ../Resources/Keywords/K_Profile.robot
Library    ScreenCapLibrary

*** Test Cases ***
Automation_Profile_Testcases
    Open_Ikon_Connect
    Terms
    Login
    Enter_To_Profile
    Accept_User_Data
    TC_Profile_Clear_Data
    #TC_Profile_Clear_Lastname
    #TC_Profile_Clear_Email
    #TC_Profile_Phone_Wrong_Number
    #TC_Profile_Phone_One_Digit
    #TC_Profile_Phone_Right_Number
    #TC_Profile_Phone_Different_Number
    close application
    #stop video recording