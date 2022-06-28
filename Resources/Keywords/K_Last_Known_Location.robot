*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Last_Known_Location.robot

*** Keywords ***
Enter_to_last_known_location
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE}
    sleep    5

Center_green_locate
    swipe    580    1782    518    474
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_CENTER_GPS}
    sleep    10

Locate_know
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW_BTN_LOCATE_NOW}
    #FOR    ${i}    IN RANGE    0    55
        #swipe    580    1782    518    474
        #wait until page contains element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.ImageView[1]      120
    #END
    wait until page contains element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.ImageView[1]      150
    sleep    3

Map_view
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW}
    sleep    2
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW_SATELLITE}
    sleep    4
    swipe    580    1782    518    474
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_CENTER_GPS}
    sleep    5
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW}
    sleep    2
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW_MAP}

Street_view
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_STREET_VIEW}
    sleep    5
    tap    ${DASH_LAST_KNOW_LOCATION_MODULE_STREET_VIEW_INSIDE}
    sleep    4