*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Dashboard.robot

*** Keywords ***
Enter_To_Profile
    tap    ${dash_icon_profile}
    sleep    3
