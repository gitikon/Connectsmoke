*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Dashboard_Trip_History.robot

*** Variables ***
${TRIP_HISTORY}      //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[2]
${TRIP_HISTORY_TODAY}    //*[@content-desc="Today"]
${TRIP_HISTORY_WEEK}     //*[@content-desc="Week"]
${TRIP_HISTORY_MONTH}    //*[@content-desc="Month"]
${TRIP_HISTORY_CUSTOM}    //*[@content-desc="Custom"]
${BTN_VIEW_TRIP_HISTORY}    //*[@content-desc="View trip history"]
${VIEW_TRIP_HISTORY}    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View[1]
${TRIP_HISTORY_MOST_RECENT}    //*[@content-desc="Sort by most recent"]
${TRIP_HISTORY_OLDEST}    //*[@content-desc="Sort by oldest"]