*** Settings ***
Library    AppiumLibrary

*** Variables ***

${MY_DEALER_BTN_BOOK_SERVICE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]/android.view.View[1]/android.view.View[2]
#//android.view.View[@content-desc="Book Service Appointment"]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]/android.view.View[1]/android.view.View[2]
#Icono    //android.view.View[@content-desc="Book Service Appointment"]/android.widget.ImageView[2]
${MY_DEALER_BTN_BOOK_SERVICE_OIL}    //android.widget.Button[@content-desc="Oil change"]
${MY_DEALER_BTN_BOOK_SERVICE_AC}    //android.widget.Button[@content-desc="AC service"]
${MY_DEALER_BTN_BOOK_SERVICE_BRAKES}    //android.widget.Button[@content-desc="Brakes"]
${MY_DEALER_BTN_BOOK_SERVICE_TIRES}    //android.widget.Button[@content-desc="Tires & alignment"]
${MY_DEALER_BTN_BOOK_SERVICE_RECALL}    //android.widget.Button[@content-desc="Recall"]
${MY_DEALER_BTN_BOOK_SERVICE_ENGINE}    //android.widget.Button[@content-desc="Engine light"]
${MY_DEALER_BTN_BOOK_SERVICE_INSPECTION}    //android.widget.Button[@content-desc="Inspection"]
${MY_DEALER_BTN_BOOK_SERVICE_OTHER}    //android.widget.Button[@content-desc="Other"]
${MY_DEALER_BTN_BOOK_SERVICE_COMMENTS}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
${MY_DEALER_BTN_BOOK_SERVICE_BTN_CONTINUE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[1]
#//*[@content-desc="Continue"]
#//android.widget.Button[@content-desc="Continue"]
${MY_DEALER_BOOK_SERVICE_ERROR_MESSAGE}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//*[@content-desc="Error You need to select an option"]
${MY_DEALER_BOOK_SERVICE_ERROR_MESSAGE_OTHER}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]
#//*[@content-desc="Error Your question is necessary"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_8AM}    //android.widget.Button[@content-desc="8:00 AM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_9AM}    //android.widget.Button[@content-desc="9:00 AM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_10AM}    //android.widget.Button[@content-desc="10:00 AM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_11AM}    //android.widget.Button[@content-desc="11:00 AM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_12PM}    //android.widget.Button[@content-desc="12:00 PM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_1PM}    //android.widget.Button[@content-desc="1:00 PM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_2PM}    //android.widget.Button[@content-desc="2:00 PM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_3PM}    //android.widget.Button[@content-desc="3:00 PM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_4PM}    //android.widget.Button[@content-desc="4:00 PM"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_BTN_CONFIRM}    //android.widget.Button[@content-desc="Confirm"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_CONFIRM_PHONE}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_CONFIRM_EMAIL}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_CONFIRM_BTN_CONFIRM}    //android.widget.Button[@content-desc="Confirm"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_SUCCESS_CHECK_ICON}    //android.widget.ImageView[@content-desc="ikon Success"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_SUCCESS_GREEN_MESSAGE}    //android.view.View[@content-desc="You have successfully requested an appointment"]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_SUCCESS_DATE_REQUEST}    //android.view.View[@content-desc="Your Requested Appointment Date and Time May 25th, at 10:00 AM. The dealer will confirm the appointment with you soon."]
${MY_DEALER_BTN_BOOK_SERVICE_SCHEDULE_SUCCESS_BTN_BACK_DASH}    //android.widget.Button[@content-desc="Take me back to Dashboard"]
${MY_DEALER_BTN}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[3]
#//*[@content-desc="My Dealer Tab 2 of 2"]