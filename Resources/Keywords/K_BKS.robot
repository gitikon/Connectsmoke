*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_BKS.robot
Resource    ../Variables/V_Login.robot
Resource    K_Dashboard.robot


*** Keywords ***

TC_Enter_to_My_Dealer
    log to console    "*******************START_Enter_to_My_Dealer********************"
    tap    ${MY_DEALER_BTN}
    wait until page contains element    ${MY_DEALER_BTN_BOOK_SERVICE}    4
    log to console    "*******************START_Enter_to_My_Dealer********************"

TC_BKS_Services
    log to console    "*******************START_Other_Service********************"
    tap    ${MY_DEALER_BTN_BOOK_SERVICE}
    swipe    580    1782    518    474
    tap    ${MY_DEALER_BTN_BOOK_SERVICE_BTN_CONTINUE}
    sleep    2
    wait until page contains element    ${l_message_error}
    click element    ${MY_DEALER_BTN_BOOK_SERVICE_OTHER}
    wait until page contains element    ${l_message_error}
    log to console    "*******************START_BKS_First_Appoinment********************"

TC_BKS_First_Appoinment
    log to console    "*******************START_BKS_First_Appoinment********************"
    tap    ${MY_DEALER_BTN_BOOK_SERVICE}

    log to console    "*******************START_BKS_First_Appoinment********************"

TC_BKS_Second_Appoinment
    log to console    "*******************START_BKS_Second_Appoinment********************"

    log to console    "*******************START_BKS_Second_Appoinment********************"

TC_BKS_