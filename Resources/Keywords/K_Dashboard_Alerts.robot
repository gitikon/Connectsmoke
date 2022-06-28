*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/V_Dashboard_Alerts.robot

*** Keywords ***
Dashboard_Alerts_Validations
    page should contain element    ${alerts}
    page should contain element    ${alerts_today}
    page should contain element    ${alerts_week}
    page should contain element    ${alerts_month}
    page should contain element    ${boundary_alerts}
    page should contain element    ${speeding_alerts}
    page should contain element    ${stolen_mode}

Dashboard_Boundary_Alerts
    click element    ${boundary_alerts}
    wait until page contains element    ${boundary_back}
    wait until page contains element    ${boundary_numbers_alerts}
    wait until page contains element    ${boundary_title}
    wait until page contains element    ${boundary_filter_option}
    wait until page contains element    ${boundary_sort_filter}
    wait until page contains element    ${boundary_list}
    sleep    5

Dashboard_Speeding_Alerts
    click element    ${boundary_alerts}
    wait until page contains element    ${boundary_back}
    wait until page contains element    ${boundary_numbers_alerts}
    wait until page contains element    ${boundary_title}
    wait until page contains element    ${boundary_filter_option}
    wait until page contains element    ${boundary_sort_filter}
    wait until page contains element    ${boundary_list}
    sleep    5
