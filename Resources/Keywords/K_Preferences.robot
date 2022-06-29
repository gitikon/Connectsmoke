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
    #page should contain element    ${PRE_PRIVACY_POLICY_CONTENT}
    sleep    2
    FOR    ${i}    IN RANGE    0    10
        swipe    580    1782    518    474
    END
    FOR    ${i}    IN RANGE    0    3
    tap    ${PRE_PRIVACY_POLICY_CLOSE}
    END
    sleep    3

TC_Preferences_Battery_Switches
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

TC_Preferences_Change_Pass_Same_Pass
#El mismo password al que esta
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    sleep    3
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    3
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    3
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
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
    #click element at coordinates    55    237      #1025,1598
    click element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[2]
    #${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
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
    #click element at coordinates    55    237      #1025,1598
    click element   //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[3]
    #${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
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
    #click element at coordinates    55    237      #1025,1598
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
    #${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_Pass_Success
#cuando el password se cambia sin problema
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    sleep    1
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
    #click element at coordinates    55    237      #1025,1598
    click element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[2]
    #${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
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
    #click element at coordinates    55    237      #1025,1598
    click element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[3]
    #${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
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
    #click element at coordinates    55    237      #1025,1598
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
    #${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_CurrentPass_Different
#Validar que el viejo pass no coincide y que el new pass es diferente al confirm
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    2
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    2
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
    #${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    sleep    2
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
    press keycode    12     #5
    sleep    3
    #click element at coordinates    55    237      #1025,1598
    click element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[2]
    #${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}
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
    #click element at coordinates    55    237      #1025,1598
    click element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[3]
    #${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}
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
    #click element at coordinates    55    237      #1025,1598
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
    #${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_Confirm_Pass_Different
#Validar que el viejo pass no coincide y que el new pass es diferente al confirm
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_PASS}
    sleep    1
    tap    ${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}
    sleep    1
    click element    ${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}
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
    press keycode    12     #5
    sleep    2
    click element at coordinates    55    237      #1025,1598
    tap    ${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}
    wait until page contains element    ${l_message_error}
    go back

TC_Preferences_Change_Pass_White_Blank
    sleep    2
    tap    ${MY_ACCOUNT_BTN_PREFERENCES}
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