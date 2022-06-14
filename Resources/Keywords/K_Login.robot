*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Login.robot
Resource    ../Variables/V_Dashboard.robot
Resource    ../Variables/V_Profile.robot
Resource    ../Variables/V_Preferences.robot

*** Keywords ***
Open_Ikon_Connect
    ${connect}    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName=R58M82NQQ6F     appPackage=com.ikontechnologies.henkelcdjr.connect    appActivity=com.ikontechnologies.iconnect.MainActivity       automationName=Uiautomator2
    #${connect}    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName=R58M82NQQ6F     appPackage=com.ikontechnologies.jameswood.connect    appActivity=com.ikontechnologies.iconnect.MainActivity       automationName=Uiautomator2
    #emulator-5554

Open_Wikipedia
    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName=R58M82NQQ6F     appPackage=org.wikipedia    appActivity=org.wikipedia.main.MainActivity       automationName=Uiautomator2

Terms
    sleep    2
    FOR    ${i}    IN RANGE    0    15
        swipe    580    1782    518    474
    END
    click element    ${btn_login}

#y para validar puedes usar javierikon2 javierikon3@mailinator.com y javierikon8(esta ahorita no tiene carro) y todas tienen el pass de Ikon1234

Login_with_empty_fields
    #EMPTY FIELDS
    log to console    "*******************START_TC_EMPTY_ FIELDS*********************"
    sleep    3
    tap    ${l_show_password}
    tap    ${l_btn_sign_in}
    wait until element is visible    ${l_message_error}
    sleep    3
    log to console    "*******************END_TC_EMPTY_ FIELDS*********************"

Login_Incorrect_User_And_Password
#INCORRECT_USER_AND_PASSWORD
    log to console    "*******************START_TC_INCORRECT_USER_AND_PASSWORD*********************"
    tap    ${l_email}
    input text    ${l_email}     holamundo
    sleep    2
    tap    ${l_show_password}
    tap    ${l_password}
    input password    ${l_password}     Hello123#
    tap    ${l_logo}
    sleep    2
    tap    ${l_btn_sign_in}
    #element should be visible    ${l_message_error}
    wait until element is visible    ${l_message_error}
    sleep    5
    log to console    "*******************END_TC_INCORRECT_USER_AND_PASSWORD*********************"

Login_Correct_User_And_Incorrect_Password
    #CORRECT_USER_AND_INCORRECT_PASSWORD
    log to console    "*******************START_TC_CORRECT_USER_AND_INCORRECT_PASSWORD*********************"
    tap    ${l_email}
    input text    ${l_email}     javierikon3@mailinator.com
    sleep    2
    tap    ${l_show_password}
    tap    ${l_password}
    input password    ${l_password}     Hello123#
    tap    ${l_logo}
    sleep    2
    tap    ${l_btn_sign_in}
    wait until element is visible    ${l_message_error}
    sleep    5
    log to console    "*******************END_TC_CORRECT_USER_AND_INCORRECT_PASSWORD*********************"

Login_Incorrect_User_And_Correct_Password
#INCORRECT_USER_AND_CORRECT_PASSWORD
    log to console    "*******************START_TC_INCORRECT_USER_AND_CORRECT_PASSWORD*********************"
    tap    ${l_email}
    input text    ${l_email}     IKONIKON@ikon.com
    sleep    2
    tap    ${l_show_password}
    tap    ${l_password}
    input password    ${l_password}     Ikon1234#
    tap    ${l_logo}
    sleep    2
    tap    ${l_btn_sign_in}
    wait until element is visible    ${l_message_error}
    sleep    5
    log to console    "*******************END_TC_INCORRECT_USER_AND_CORRECT_PASSWORD*********************"

Login_Credential_With_Keep_Me_Login
#VALID_CREDENTIALS_WITH_KEEP_ME_LOGIN
    log to console    "*******************START_TC_VALID_CREDENTIALS_WITH_KEEP_ME_LOGIN*********************"
    tap    ${l_show_password}
    tap    ${l_email}
    input text    ${l_email}     javierikon3@mailinator.com
    tap    ${l_password}
    input password    ${l_password}     Ikon1234
    tap    ${l_logo}
    tap    ${l_btn_sign_in}
    sleep    3
    element should be visible    //*[@content-desc="Dashboard"]
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[1]
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.Button[1]
    sleep    3
    swipe    580    1782    518    474
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[2]
    sleep    5
    log to console    "*******************END_TC_VALID_CREDENTIALS_WITH_KEEP_ME_LOGIN*********************"

Login_Valid_Credentials_Without_Keep_Me_Login
    #VALID_CREDENTIALS_WITHOUT_KEEP_ME_LOGIN
    log to console    "*******************START_TC_VALID_CREDENTIALS_WITHOUT_KEEP_ME_LOGIN*********************"
    tap    ${l_show_password}
    tap    ${l_email}
    input text    ${l_email}     javierikon3@mailinator.com
    tap    ${l_password}
    input password    ${l_password}     Ikon1234
    tap    ${l_logo}
    tap    ${l_KEEP_ME_LOGIN}
    tap    ${l_btn_sign_in}
    sleep    3
    element should be visible    //*[@content-desc="Dashboard"]
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.view.View[1]
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.widget.Button[1]
    sleep    3
    swipe    580    1782    518    474
    sleep    3
    tap    //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View[1]/android.widget.ScrollView[1]/android.widget.Button[2]
    sleep    5
    log to console    "*******************END_TC_VALID_CREDENTIALS_WITHOUT_KEEP_ME_LOGIN*********************"

Login_Valid_Credentials_Without_Cars
    #VALID_CREDENTIALS_WITHOUT_CARS
    log to console    "*******************START_TC_VALID_CREDENTIALS_WITHOUT_CARS*********************"
    tap    ${l_show_password}
    tap    ${l_email}
    input text    ${l_email}     javierikon8@mailinator.com
    tap    ${l_password}
    input password    ${l_password}     Ikon1234
    tap    ${l_logo}
    tap    ${l_btn_sign_in}
    sleep    3
    element should be visible    //android.view.View[@content-desc="No vehicles found!"]
    sleep    5
    log to console    "*******************END_TC_VALID_CREDENTIALS_WITHOUT_CARS*********************"

Login
    #LOGIN
    log to console    "*******************START_LOGIN*********************"
    tap    ${l_show_password}
    tap    ${l_email}
    input text    ${l_email}     javierikon3@mailinator.com
    tap    ${l_password}
    input password    ${l_password}     Ikon1234
    tap    ${l_logo}
    tap    ${l_btn_sign_in}
    sleep    5
    #sleep    5
    log to console    "*******************END_LOGIN*********************"
