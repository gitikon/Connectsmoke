*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Preferences.robot
Resource    ../Variables/V_Login.robot
Resource    K_Preferences.robot
Resource    K_Dashboard.robot
Resource    K_Profile.robot

*** Keywords ***
TC_Enter_Preferences
    sleep    2
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    #swipe    907    1207    176    1207
    #click button    ${MY_ACCOUNT_BTN_PREFERENCES}
    #click element at coordinates    235    178

TC_Preferences_Enter_to_Change_Password
    log to console    "*******************START_Enter_to_Change_Password********************"
    sleep    2
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    3
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    log to console    "*******************END_Enter_to_Change_Password********************"

TC_Preferences_Privacy Policy

    log to console    "*******************START_Privacy_Policy*********************"
    tap    ${PRE_PRIVACY_POLICY}
    #page should contain element    ${PRE_PRIVACY_POLICY_CONTENT}
    sleep    2
    FOR    ${i}    IN RANGE    0    10
        swipe    580    1782    518    474
    END
    FOR    ${i}    IN RANGE    0    3
    tap    ${PRE_PRIVACY_POLICY_CLOSE}
    END
    sleep    3
    log to console    "*******************END_Privacy_Policy*********************"

TC_Preferences_Battery_Switches
    log to console    "*******************START_Battery_Switches_Measurement*********************"
    tap    ${PRE_SWITCH_WARNING_BAT}
    sleep    1
    tap    ${PRE_SWITCH_PLUG_UNPLU_BAT}
    sleep    1
    tap    ${PRE_KM}
    appiumlibrary.go back
    tap    ${dash_icon_profile}
    Accept_User_Data
    TC_Enter_Preferences
    tap    ${PRE_SWITCH_LOW_BAT}
    sleep    1
    tap    ${PRE_SWITCH_PLUG_UNPLU_BAT}
    sleep    1
    tap    ${PRE_MILES}
    appiumlibrary.go back
    tap    ${dash_icon_profile}
    Accept_User_Data
    TC_Enter_Preferences
    tap    ${PRE_SWITCH_LOW_BAT}
    sleep    1
    tap    ${PRE_SWITCH_PLUG_UNPLU_BAT}
    sleep    1
    log to console    "*******************END_Battery_Switches_Measurement*********************"

TC_Preferences_Change_Pass_Same_Pass
#El mismo password al que esta
    log to console    "*******************START_Same_Pass*********************"
    sleep    3
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    press keycode    -1    37    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    3
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    press keycode    -1    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    1
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    sleep    2
    press keycode    -1     #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    2
    click element at coordinates    55    237      #1025,1598
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    log to console    "*******************END_Same_Pass*********************"

TC_Preferences_Change_Pass_Success
#cuando el password se cambia sin problema
    log to console    "*******************START_Change_Pass_Success*********************"
    sleep    3
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    sleep    2
    FOR    ${i}    IN RANGE    0    9
        press keycode    67   #delete
    END
    press keycode    -1    37    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    3
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    sleep    2
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    press keycode    -1    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    sleep    1
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    sleep    2
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    press keycode    -1    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    sleep    2
    click element at coordinates    55    237      #1025,1598
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    log to console    "*******************END_Change_Pass_Success*********************"

TC_Preferences_Change_CurrentPass_Different
#Validar que el viejo pass no coincide y que el new pass es diferente al confirm
    log to console    "*******************START_Current_Pass_Different*********************"
    sleep    4
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    press keycode    -1    37    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    press keycode    12     #5
    sleep    3
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    press keycode    -1    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    1
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    sleep    2
    press keycode    -1     #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    2
    click element at coordinates    55    237      #1025,1598
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    log to console    "*******************END_Current_Pass_Different*********************"

TC_Preferences_Change_Confirm_Pass_Different
#Validar que el viejo pass no coincide y que el new pass es diferente al confirm
    log to console    "*******************START_Diferent_Pass*********************"
    sleep    4
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    press keycode    -1    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    sleep    3
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    press keycode    -1    #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    sleep    1
    click element at coordinates    55    237      #1025,1598
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
    FOR    ${i}    IN RANGE    0    9
        press keycode    67    #delete
    END
    sleep    2
    press keycode    -1     #caps_lock
    press keycode    37     #i
    press keycode    39     #k
    press keycode    43      #o
    press keycode    42     #n
    press keycode    8     #1
    press keycode    9     #2
    press keycode    10     #3
    press keycode    11     #4
    press keycode    12     #5
    sleep    2
    click element at coordinates    55    237      #1025,1598
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    log to console    "*******************END_Diferent_Pass*********************"

TC_Preferences_Change_Pass_White_Blank
#Verificar que salga el letrero al querer guardar con espacios en blanco
    log to console    "*******************START_White_Blank*********************"
    #sleep    2
    #tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    #sleep    1
    #tap    ${PRE_BTN_CHANGE_PASS}
    #sleep    3
    #tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    #sleep    1
    #tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    #sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    wait until page contains element    ${pre_btn_change_pass_current_not_blank}
    log to console    "*******************END_White_Blank*********************"

TC_Change_Pass_SMS
    tap    ${PRE_BTN_CHANGE_PASS}
    tap    ${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE}
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}