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

Dashboard_Validations
    page should contain element    ${profile_image}
    page should contain element    ${email_image}
    page should contain element    ${list_cars}
    page should contain element    ${details}
    page should contain element    ${alerts}
    page should contain element    ${last_know_location}
    swipe    580    1782    518    474
    page should contain element    ${trip_history}
    sleep    3