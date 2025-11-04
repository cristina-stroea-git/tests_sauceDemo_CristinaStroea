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
Resource    ../Resources/CheckoutOverview_page.robot


*** Test Cases ***
# CheckoutOverview

CheckoutOverview page - QTY and Description table is displayed
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

    Checkout Overview page - Items QTY and Description table are displayed

    Close Browser

CheckoutOverview page - QTY and Description table is displayed
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

    Checkout Overview page - Payment, Shipping Information and Price are displayed


    Close Browser


CheckoutOverview page - Cancel button redirects to Products page
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

    Checkout Overview page - Cancel button redirects to Products page

    Close Browser




CheckoutOverview page - Finish button redirects to Checkout Complete page
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

    Checkout Overview page - Finish button redirects to Checkout Complete page
    Sleep    3
    Close Browser
