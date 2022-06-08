*** Settings ***
Library    AppiumLibrary

*** Variables ***
#**************************** TERMS_AND_CONDITIONS*******************************************
${BTN_TERMS_CONDITIONS}    //android.widget.Button[@content-desc="Accept terms and conditions"]
${BTN_LOGIN2}    //android.widget.Button[@text="Accept terms and conditions"]
${BTN_LOGIN}      //*[@content-desc="Accept terms and conditions"]
${btn_terms}     //*[@content-desc="Accept terms and conditions"]
${scroll}    swipe    580    1782    518    474
#***************************LOGIN*************************************************************
${L_LOGO}     //*[@class="android.widget.ImageView"]
${L_EMAIL}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[1]
#//*[@text="Type  your email or username"]
${L_PASSWORD}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.EditText[2]
${L_BTN_SIGN_IN}     //*[@content-desc="Sign in"]
${L_MESSAGE_ERROR}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
${L_KEEP_ME_LOGIN}    //*[@content-desc="Keep me logged in"]
${L_FORGOT_PASWORD}    //*[@content-desc="Forgot password?"]
${L_SHOW_PASSWORD}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]/android.widget.Button
#//*[@text="Type  your password"]//*[@password="false"]

