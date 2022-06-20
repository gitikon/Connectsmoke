*** Settings ***
Library    AppiumLibrary
Resource     ../Resources/Keywords/K_Login.robot
Resource    ../Resources/Keywords/K_Dashboard_Trip_History.robot

*** Test Cases ***
TC_Trip_History_View
    Open_Ikon_Connect
    Terms
    Login
    swipe    580    1782    518    474
    sleep    3
    tap    //*[@content-desc="Month"]
    sleep    3
    tap    //*[@content-desc="Week"]
    sleep    3
    tap    //*[@content-desc="Today"]
    sleep    3
    tap    //*[@content-desc="View trip history"]
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View[1]
    sleep    3
    swipe    580    1782    518    474
    sleep    3
    #center icon
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ImageView[1]
    sleep    3
    #maps icon
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ImageView[2]
    sleep    3
    #satellite view
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ImageView[1]
    sleep    3
    go back
    sleep    3
    #filter time
    tap    //*[@content-desc="Today"]
    sleep    3
    #filter custom
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[5]
    sleep    3
    #tap    ${TRIP_HISTORY_WEEK}
    #sleep    3
    #tap    ${TRIP_HISTORY_TODAY}
    #sleep    3
    sleep    7
    close application

TC_Trip_History_Filters
#ESTA PRUEBA SE TIENE QUE REFACTORIZAR
#PARA QUE FUNCIONE CON COORDENADAS
    Open_Ikon_Connect
    Terms
    Login
    swipe    580    1782    518    474
    sleep    3
    tap    //*[@content-desc="View trip history"]
    sleep    3
    tap    //*[@content-desc="Today"]
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[5]
    sleep    8
    tap    //*[@content-desc="15, Wednesday, June 15, 2022"]
    sleep    3
    tap    //*[@content-desc="25, Saturday, June 25, 2022"]
    sleep    3
    tap    //*[@content-desc="SAVE"]
    Sleep    5
    tap    //*[@content-desc="Sort by most recent"]
    sleep    3
    tap    //*[@content-desc="Oldest"]
    sleep    5
    close application