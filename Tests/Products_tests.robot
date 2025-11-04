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


*** Variables ***
${productsFile}     ${EXECDIR}/Resources/Products_data.csv
*** Test Cases ***

Products page - menu button is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    All pages - Menu button is displayed properly
	Close Browser

Products page - menu list is as expected
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    All pages - Menu list has expected items
	Close Browser


Products page - menu close button is displayed properly
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    All pages - Menu - Close button is displayed properly
	Close Browser


Products page - shopping cart button is displayed properly
    [Documentation]    This test opens Products Page and validates shopping cart button
    ...                Expected results: shopping cart button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart is displayed properly
	Close Browser

Products page - sort dropdown - option list as expected
    [Documentation]    This test opens Products Page and validates menu button
    ...                Expected results: menu button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Sort dropdown is displayed properly
	Close Browser


Products details should be as expected (correct values)
    [Documentation]    This test opens Products Page and reads all products details
    ...                Name Description Price and Image
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1

    Get products
    Load Expected Products From CSV     ${productsFile}
    Products Name Description Price and Image should be as expected     ${productsFile}

Products page - product Add/Remove should be positioned and text as expected
    [Documentation]    This test opens Products Page and reads all products info
    ...                Expected results: Add or Remove button is displayed properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1

    Get products
    Load Expected Products From CSV     ${productsFile}
    Products page - Add/Remove buttons are displayed properly

Products page - product Add/Remove should work and change text after click
    [Documentation]    This test opens Products Page and check all products Add/Remove to/from cart
    ...                Expected results: Add or Remove button is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1

    Get products
    Products page - Add/Remove buttons are working properly (change state)



Products page - Add to cart button becomes Remove button and vice versa
    [Documentation]    This test opens Products Page and check all products Add/Remove to/from cart
    ...                Expected results: Add or Remove button is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Add to cart button becomes Remove button and vice versa     Add     sauce-labs-backpack
    Products page - Add to cart button becomes Remove button and vice versa     Remove     sauce-labs-backpack

    Close Browser



Products page - Shopping cart button redirects to Your Cart page
    [Documentation]    This test opens Products Page and check all products Add/Remove to/from cart
    ...                Expected results: Add or Remove button is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Shopping cart button is displayed
    Products page - open Shopping cart page
    ShoppingCart page is displayed

    Close Browser




Products page - Sort dropdown - sort option is selected
    [Documentation]    This test opens Products Page and checks Sort dropdown
    ...                Expected results: Sort dropdown is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Sort dropdown - Sort    Price (low to high)
    Close Browser

Products page - Sort dropdown - sort option is applied Price (low to high)
    [Documentation]    This test opens Products Page and checks Sort dropdown
    ...                Expected results: Sort dropdown is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Sort dropdown - Sort    Price (low to high)
    Sleep    1
    Products page - Sort dropdown - Sort is applied    Price (low to high)
    Close Browser

Products page - Sort dropdown - sort option is applied Price (high to low)
    [Documentation]    This test opens Products Page and checks Sort dropdown
    ...                Expected results: Sort dropdown is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Sort dropdown - Sort    Price (high to low)
    Sleep    1
    Products page - Sort dropdown - Sort is applied    Price (high to low)
    Close Browser

Products page - Sort dropdown - sort option is applied Name (A to Z)
    [Documentation]    This test opens Products Page and checks Sort dropdown
    ...                Expected results: Sort dropdown is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Sort dropdown - Sort    Name (A to Z)
    Sleep    1
    Products page - Sort dropdown - Sort is applied    Name (A to Z)
    Close Browser


Products page - Sort dropdown - sort option is applied Name (Z to A)
    [Documentation]    This test opens Products Page and checks Sort dropdown
    ...                Expected results: Sort dropdown is working properly
    ...                .
    [Tags]      standard_user       problem_user    performance_glitch_user    error_user  visual_user
    open souceDemo homepage
    Login     ${Alluser_Password}   # ${ACTIVE_USER}    standard_user     # default user
    Validate Login
    Sleep    1
    Products page - Sort dropdown - Sort    Name (Z to A)
    Sleep    1
    Products page - Sort dropdown - Sort is applied    Name (Z to A)
    Close Browser