*** Settings ***
Library    AppiumLibrary

*** Variables ***
${DASH_LAST_KNOW_LOCATION_MODULE}    //android.view.View[@content-desc="Last known location"]
${DASH_LAST_KNOW_LOCATION_MODULE_CENTER_GPS}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[2]
${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW_BTN_LOCATE_NOW}    //android.view.View[@content-desc="Locate now"]
${DASH_LAST_KNOW_LOCATION_MODULE_MESSAGE}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.ImageView
${DASH_LAST_KNOW_LOCATION_MODULE_BACK}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button
${DASH_LAST_KNOW_LOCATION_MODULE_STREET_VIEW}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[3]
${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW_SATELLITE}    //android.widget.ImageView[@content-desc="Satellite view"]
${DASH_LAST_KNOW_LOCATION_MODULE_MAP_VIEW_MAP}    //android.widget.ImageView[@content-desc="Map view"]
${DASH_LAST_KNOW_LOCATION_MODULE_STREET_VIEW_INSIDE}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView

#//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[1]
#//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.Button[1]