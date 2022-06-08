*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PRO_USER_DATA_SECURITY}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.Button[1]
${PRO_PROFILE_MENU}    //android.view.View[@content-desc="Profile Tab 1 of 2"]
${PRO_F_NAME}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[1]
${PRO_L_NAME}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]
${PRO_EMAIL}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[3]
${PRO_SAVE_CHANGES}    //android.widget.Button[@content-desc="Save changes"]
#//android.widget.Button[@content-desc="Save changes"]
${PRO_LOG_OUT}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[1]
${DASH_ICON_PROFILE}    //android.widget.Button[@content-desc="Log out"]
${Pro_Code_Area}    //android.widget.ImageView[@content-desc="+1"]
${Pro_Phone_Number}    //android.widget.ImageView[@content-desc="+1"]/android.widget.EditText
${Pro_Error_Code_Area}    //android.view.View[@content-desc="Error Please enter a valid area code."]
${Pro_Error_Empty_Fields}    //android.view.View[@content-desc="Error You cannot leave empty fields."]
${Pro_Error_Valid_Number}    //android.view.View[@content-desc="Error Please enter a valid phone number."]
${Pro_bg}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.ScrollView
${L_MESSAGE_ERROR}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//android.widget.Button[@content-desc="Save changes"]

