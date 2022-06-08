*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Preferences.robot
Resource    ../Variables/V_Login.robot
Resource    ../Variables/V_Dashboard.robot
Resource    ../Variables/V_Profile.robot

*** Keywords ***
TC_Enter_Preferences
    sleep    2
    tap    ${MY_ACCOUNT_PREFERENCES}
    #swipe    907    1207    176    1207
    #click button    ${MY_ACCOUNT_PREFERENCES}
    #click element at coordinates    235    178

TC_Preferences_Change_Password_Button
    tap    ${PRE_BTN_CHANGE_PASS}

TC_Preferences_Current_Password
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}

TC_Preferences_Verification_Code
    tap    ${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE}
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}

TC_Preferences_Privacy Policy
    tap    ${PRE_PRIVACY_POLICY}
    page should contain element    ${PRE_PRIVACY_POLICY_CONTENT}
    sleep    2
    FOR    ${i}    IN RANGE    0    10
        swipe    580    1782    518    474
    END
    tap    ${PRE_PRIVACY_POLICY_CLOSE}

TC_Preferences_Battery_Switches
    tap    ${PRE_SWITCH_WARNING_BAT}
    sleep    1
    tap    ${PRE_SWITCH_PLUG_UNPLU_BAT}
    sleep    1
    tap    ${PRE_KM}
    appiumlibrary.go back
    tap    ${dash_icon_profile}
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    tap    ${PRE_SWITCH_LOW_BAT}
    sleep    1
    tap    ${PRE_SWITCH_PLUG_UNPLU_BAT}
    sleep    1
    tap    ${PRE_MILES}
    appiumlibrary.go back
    tap    ${dash_icon_profile}
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    tap    ${PRE_SWITCH_LOW_BAT}
    sleep    1
    tap    ${PRE_SWITCH_PLUG_UNPLU_BAT}
    sleep    1

TC_Preferences_Change_Pass_Same_Pass
#El mismo password al que esta
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${MY_ACCOUNT_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}    Ikon1234
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    sleep    1
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}    Ikon1234
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}    Ikon1234
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_Pass_Success
#cuando el password se cambia sin problema
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${MY_ACCOUNT_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}    Ikon1234
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    sleep    1
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}    1234Ikon
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}    1234Ikon
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_Different
#Validar que el viejo pass no coincide y que el new pass es diferente al confirm
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${MY_ACCOUNT_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}    Ikon5432
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    sleep    1
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}    Ikon1234
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}    Ikon1234
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    sleep    3
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}    Ikon1234
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    sleep    1
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}    1234Ikon
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    input text    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}    1234Ikons
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_Pass_White_Blank
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${MY_ACCOUNT_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Change_Pass_SMS
    tap    ${PRE_BTN_CHANGE_PASS}
    tap    ${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE}
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}