*** Settings ***
Library    AppiumLibrary

*** Variables ***
#************************ HOURS_OF_OPERATION *******************
${MY_DEALER_BTN_HOURS_OPERATION}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]/android.view.View[1]/android.view.View[6]
#${MY_DEALER_HOURS_OPERTAION_POPUP}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]

#************************ CALL_SERVICE_CENTER *******************
${MY_DEALER_BTN_CALL_SERVICE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]/android.view.View[1]/android.view.View[5]
${MY_DEALER_BTN_CALL_SERVICE_BTN_MAKE_CALL}    //android.widget.Button[@content-desc="Yes, make the call"]

#************************ DIRECTIONS_TO_DEALER *******************
${MY_DEALER_BTN_DIRECTION_DEALER}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]/android.view.View[1]/android.view.View[4]
${MY_DEALER_BTN_DIRECTION_DEALER_BEGIN_ROUTE}    //android.widget.Button[@content-desc="Begin route"]

#************************ ROADSIDE_ASSISTANCE *******************
${MY_DEALER_BTN_ROADSIDE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]/android.view.View[1]/android.view.View[3]
${MY_DEALER_BTN_ROADSIDE_BTN_START_REQUEST}    //android.widget.Button[@content-desc="Start Request"]
${MY_DEALER_BTN_ROADSIDE_BTN_CANCEL}    //android.widget.Button[@content-desc="Cancel"]
