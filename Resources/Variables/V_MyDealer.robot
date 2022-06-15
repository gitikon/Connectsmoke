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

#************************ BOOK_SERVICE_APPOINTMENT *******************
${MY_DEALER_BTN_BOOK_SERVICE}    //android.view.View[@content-desc="Book Service Appointment"]
${MY_DEALER_BTN_BOOK_SERVICE_OIL}    //android.widget.Button[@content-desc="Oil change"]
${MY_DEALER_BTN_BOOK_SERVICE_AC}    //android.widget.Button[@content-desc="AC service"]
${MY_DEALER_BTN_BOOK_SERVICE_BRAKES}    //android.widget.Button[@content-desc="Brakes"]
${MY_DEALER_BTN_BOOK_SERVICE_TIRES}    //android.widget.Button[@content-desc="Tires & alignment"]
${MY_DEALER_BTN_BOOK_SERVICE_RECALL}    //android.widget.Button[@content-desc="Recall"]




