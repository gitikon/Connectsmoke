*** Settings ***
Library    AppiumLibrary


*** Variables ***

${MY_ACCOUNT_BTN_PREFERENCES}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[2]
#${PROFILE_PREFERENCES_MENU}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[2]
#//*[@content-desc="Preferences Tab 2 of 2"]
#${MY_ACCOUNT_BTN_PREFERENCES}    //android.view.View[@content-desc="Preferences Tab 2 of 2"]

${PRE_SWITCH_WARNING_BAT}    //android.widget.Switch[@content-desc="Warning battery status update"]
${PRE_SWITCH_LOW_BAT}    //android.widget.Switch[@content-desc="Low battery status update"]
${PRE_SWITCH_PLUG_UNPLU_BAT}    //android.widget.Switch[@content-desc="Plugged / Unplugged device"]
${PRE_KM}    //android.widget.Button[@content-desc="km"]
${PRE_MILES}    //android.widget.Button[@content-desc="mi"]
${PRE_BTN_CHANGE_PASS}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View[1]/android.widget.Button[3]
#//*[@content-desc="Change your password"]
${PRE_BTN_CHANGE_PASS_CURRENT_PASS}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.RadioButton[1]
${PRE_BTN_CHANGE_PASS_CURRENT_OLD_PASS}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.EditText[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.EditText[1]
#//*[@text="Type  your old password"]
${PRE_BTN_CHANGE_PASS_CURRENT_NEW_PASS}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[2]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.EditText[2]
#//*[@text="Type  your new password"]
${PRE_BTN_CHANGE_PASS_CURRENT_CONFIRM_PASS}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[3]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.EditText[3]
#//*[@text="Confirm here your new password"]
${PRE_BTN_CHANGE_PASS_CURRENT_BTN_CONTINUE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.Button[1]
#//android.widget.Button[@content-desc="Continue"]
${PRE_BTN_CHANGE_PASS_BTN_CONTINUE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.Button[1]
#//*[@content-desc="Continue"]
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.RadioButton[2]
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE_ENTER_CODE}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE_RESEND_CODE}    //android.widget.Button[@content-desc="Resend code"]
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE_BTN_CONTINUE}    //android.widget.Button[@content-desc="Continue"]
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE_NEW_PASS}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE_CONFIRM_PASS}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${PRE_BTN_CHANGE_PASS_VERIFICATION_CODE_LAST_BTN_CONTINUE}    //android.widget.Button[@content-desc="Continue"]
${PRE_PRIVACY_POLICY}    //android.widget.Button[@content-desc="Privacy policy"]
${PRE_PRIVACY_POLICY_CLOSE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.Button[1]
#//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.widget.Button
${PRE_PRIVACY_POLICY_CONTENT}
${PRE_BTN_CHANGE_PASS_CURRENT_ERROR_NOT_SAME}    //android.view.View[@content-desc="Error New and old passwords cannot be the same "]
${PRE_BTN_CHANGE_PASS_CURRENT_NOT_BLANK}    (//android.view.View[@content-desc="Cannot be blank"])[1]