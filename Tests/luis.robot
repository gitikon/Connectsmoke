*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
#Resource    ../Resources/Keywords/K_Preferences.robot
#Resource    ../Resources/Keywords/K_Profile.robot
#Resource    ../Resources/Keywords/K_Last_Known_Location.robot
#Resource    ../Resources/Keywords/K_Dashboard.robot
Resource    ../Resources/Keywords/K_Dashboard_Details.robot



*** Test Cases ***
TC_Dashboard_Details
    Open_Ikon_Connect
    Terms
    Login
    Dashboard_Details_Plate_Validations
    Dashboard_Details_Plate_1_value
    Dashboard_Details_plate_dash_Validation
    Dashboard_Details_Special_Characters
    Dashboard_Details_Plate_empty
    close application










#Login_Dashboard
#   Start Video Recording    alias=None    name=../Data/Video/DEMO_LOGIN_IKON    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
#    Open_Ikon_Connect
#    Terms
#    Login
#    Enter_to_last_known_location
#    Locate_know
#    wait until page contains element    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.ImageView[1]

    #//*[@content-desc="We couldn't locate your vehicle, please try again."]
    #
    #
    #//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.ImageView[1]


#    close application
