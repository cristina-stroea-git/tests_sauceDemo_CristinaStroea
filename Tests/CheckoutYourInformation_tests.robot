*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library     String
Resource    ../Resources/resources.robot
Resource    ../Resources/Login_page.robot
Resource    ../Resources/Products_page.robot
Resource    ../Resources/ShoppingCart_page.robot
Resource    ../Resources/CheckoutYourInformation_page.robot

*** Test Cases ***
# CheckoutYourInformation

CheckoutYourInformation page - name, postal code and checkout button are displayed
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed

    CheckoutYourInformation - firstname textfield is displayed
    CheckoutYourInformation - lastnamename textfield is displayed
    CheckoutYourInformation - postal code textfield is displayed
    CheckoutYourInformation - continue checkout button is displayed
    CheckoutYourInformation - cancel checkout button is displayed

	Close Browser

CheckoutYourInformation page - first name/ last name/ postal code are editable
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed

    CheckoutYourInformation - fill in first name  FirstName123
    CheckoutYourInformation - fill in last name  LastName123
    CheckoutYourInformation - fill in postal code    PostalCode123

    Close Browser





CheckoutYourInformation page - first name/ last name/ postal code are mandatory
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed


    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: First Name is required
    CheckoutYourInformation - fill in first name  FirstName123
    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: Last Name is required
    CheckoutYourInformation - fill in last name  LastName123
    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: Postal Code is required
    # CheckoutYourInformation - fill in last name  LastName123
    # CheckoutYourInformation - fill in postal code    PostalCode123

    Close Browser




CheckoutYourInformation page - last name is mandatory
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed


    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: First Name is required
    CheckoutYourInformation - fill in first name  FirstName123
    CheckoutYourInformation - fill in postal code    PostalCode123
    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: Last Name is required
    # CheckoutYourInformation - fill in last name  LastName123
    # CheckoutYourInformation - fill in postal code    PostalCode123

    Close Browser



CheckoutYourInformation page - Postal Code is mandatory
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed


    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: First Name is required
    CheckoutYourInformation - fill in first name  FirstName123
    CheckoutYourInformation - fill in last name  LastName123
    CheckoutYourInformation - continue checkout
    CheckoutYourInformation - error returned    Error: Postal Code is required

    Close Browser



CheckoutYourInformation page - cancel button redirects to Cart page
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed
    CheckoutYourInformation - cancel checkout redirects to cart page


CheckoutYourInformation page - continue button redirects to Checkout Overview page
    [Documentation]    This test opens CheckoutYourInformation Page
    ...                Expected results:
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - add all products to cart
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page - place order
    CheckoutYourInformation page is displayed
    CheckoutYourInformation - fill in first name  FirstName123
    CheckoutYourInformation - fill in last name  LastName123
    CheckoutYourInformation - fill in postal code    PostalCode123
    CheckoutYourInformation - continue checkout redirects to Checkout Overview page
    Close Browser
