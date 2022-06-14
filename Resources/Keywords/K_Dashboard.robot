*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Dashboard.robot

*** Keywords ***
Enter_To_Profile
    tap    ${dash_icon_profile}
    sleep    3

Enter_To_MyDealer_Menu
    tap    ${dash_mydealer_menu}
    sleep    4
