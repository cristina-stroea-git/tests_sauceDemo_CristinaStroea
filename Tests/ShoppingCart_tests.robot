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

ShoppingCart page - Products table is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page is displayed
    # ShoppingCart page - place order
    ShoppingCart products table is displayed properly
    ShoppingCart products table QTY is displayed properly
    ShoppingCart products table Description is displayed properly
	Close Browser


ShoppingCart page - Continue Shopping button is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page is displayed
    ShoppingCart Continue Shopping button is displayed properly
	Close Browser

ShoppingCart page - Checkout button is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page is displayed
    ShoppingCart Checkout button is displayed properly
	Close Browser


ShoppingCart page - Cart button is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page is displayed
    ShoppingCart Cart button is displayed properly
	Close Browser


ShoppingCart page - menu button is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page is displayed
    All pages - Menu button is displayed properly


	Close Browser





ShoppingCart page - all products - place order
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
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
	Close Browser







