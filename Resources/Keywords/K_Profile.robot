*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Profile.robot
Resource    /K_Dashboard.robot

*** Keywords ***
Accept_User_Data
    tap    ${pro_user_data_security}
    sleep    3

TC_Profile_Clear_Data
    tap    ${pro_f_name}
    clear text    ${pro_f_name}
    sleep    3
    tap    ${pro_l_name}
    clear text    ${pro_l_name}
    sleep    3
    tap    ${profile_form}
    tap    ${pro_email}
    clear text    ${pro_email}
    sleep    3
    tap    ${profile_form}
    tap    ${pro_phone_number}
    clear text    ${pro_phone_number}
    sleep    3
    tap    ${profile_form}
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
    sleep    7

TC_Profile_Enter_Lower_Capital_Letters
    tap    ${pro_f_name}
    input text    ${pro_f_name}    Roberto
    sleep    3
    tap    ${pro_l_name}
    input text    ${pro_l_name}    Carlos
    sleep    3
    tap    ${profile_form}
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
    sleep    3
    go back
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${pro_f_name}
    input text    ${pro_f_name}    roberto
    sleep    3
    tap    ${pro_l_name}
    input text    ${pro_l_name}    Carlos
    sleep    3
    tap    ${profile_form}
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
    sleep    3
    go back
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${pro_f_name}
    input text    ${pro_f_name}    Roberto
    sleep    3
    tap    ${pro_l_name}
    input text    ${pro_l_name}    carlos
    sleep    3
    tap    ${profile_form}
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
    sleep    3
    go back
    Enter_To_Profile
    Accept_User_Data
    sleep    2
    tap    ${pro_f_name}
    input text    ${pro_f_name}    roberto
    sleep    3
    tap    ${pro_l_name}
    input text    ${pro_l_name}    carlos
    sleep    3
    tap    ${profile_form}
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
    sleep    3
    go back

TC_Profile_Clear_Lastname
    tap    ${pro_l_name}
    clear text    ${pro_l_name}
    sleep    3
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
TC_Profile_Clear_Email
    tap    ${pro_email}
    clear text    ${pro_email}
    sleep    3
    swipe    580    1782    518    474
    tap    ${pro_save_changes}
    sleep    2
TC_Profile_Phone_Wrong_Number
    element should be visible    ${pro_code_area}
    tap    ${Pro_Phone_Number}
    clear text    ${Pro_Phone_Number}
    input text    ${Pro_Phone_Number}    3334969280
    tap    ${Pro_bg}
    swipe    580    1782    518    474
    tap    ${PRO_SAVE_CHANGES}
    wait until element is visible    ${L_MESSAGE_ERROR}
    sleep    2
TC_Profile_Phone_One_Digit
    element should be visible    ${pro_code_area}
    tap    ${Pro_Phone_Number}
    clear text    ${Pro_Phone_Number}
    input text    ${Pro_Phone_Number}    2
    tap    ${Pro_bg}
    swipe    580    1782    518    474
    tap    ${PRO_SAVE_CHANGES}
    wait until page contains element    ${L_MESSAGE_ERROR}
    sleep    2
TC_Profile_Phone_Right_Number
    element should be visible    ${pro_code_area}
    tap    ${Pro_Phone_Number}
    clear text    ${Pro_Phone_Number}
    input text    ${Pro_Phone_Number}    2243359185
    tap    ${Pro_bg}
    swipe    580    1782    518    474
    tap    ${PRO_SAVE_CHANGES}
    sleep    2
TC_Profile_Phone_Different_Number
    element should be visible    ${pro_code_area}
    tap    ${Pro_Phone_Number}
    clear text    ${Pro_Phone_Number}
    input text    ${Pro_Phone_Number}    2163547758
    tap    ${Pro_bg}
    swipe    580    1782    518    474
    sleep    1
    tap    ${PRO_SAVE_CHANGES}
    sleep    2
