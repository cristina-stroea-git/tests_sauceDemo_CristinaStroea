* Settings *
Documentation   To validate the login form
Library     SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library     String
Resource    ../Resources/resources.robot
Resource    ../Resources/Login_page.robot
Resource    ../Resources/Products_page.robot

* Variables *

* Test Cases *

Open souceDemo LoginPage and check title
    [Documentation]    This test opens souceDemo Page
    ...                Expected results: souceDemo Page is displayed and page title is correct
    ...                .
    [Tags]      standard_user       locked_out_user      problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Sleep    3
    Page title is correct   ${PageTitle}    ${Page_name}
    Close Browser

Open souceDemo LoginPage and valid login
    [Documentation]    This test opens souceDemo Page and validates login form elements
    ...                Expected results: username, password and Login buttons are displayed properly
    ...                .
    [Tags]      standard_user       locked_out_user      problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Close Browser

Open souceDemo LoginPage and invalid login missing UserName
    [Documentation]    This test opens souceDemo Page and validates login form elements
    ...                Expected results: Missing Username Error message
    ...                .
    open souceDemo homepage
    Login Attempt without user
    Validate Login without user
    Close Browser

Open souceDemo LoginPage and invalid login missing Password
    [Documentation]    This test opens souceDemo Page and validates login form elements
    ...                Expected results: Missing Password Error message
    ...                .
    open souceDemo homepage
    Login Attempt without password
    Validate Login without password
    Close Browser

Open souceDemo LoginPage and invalid login UserPassNotMatch
    [Documentation]    This test opens souceDemo Page and validates login form elements
    ...                Expected results: User/Pass combination don't match
    ...                .
    open souceDemo homepage
    Login Attempt User Pass not match
    Validate Login User Pass not match
    Close Browser