*** Settings ***
Library    SeleniumLibrary


Variables    ../PageObjects/Locator.py

*** Variables ***

*** Keywords ***
Open my Browser
    [Arguments]    ${siteUrl}      ${Browser}
    open browser    ${siteUrl}      ${Browser}
    maximize browser window

Click Register Link
    click link    ${link_Reg}


Enter FirstName
    [Arguments]    ${firstName}
    input text    ${txt_firstName}      ${firstName}

Enter LastName
    [Arguments]    ${lastName}
    input text    ${txt_lastName}      ${lastName}

Enter phone
    [Arguments]    ${phone}
    input text    ${txt_phone}      ${phone}

Enter email
    [Arguments]    ${email}
    input text    ${txt_email}      ${email}
Enter address1
    [Arguments]    ${add1}
    input text    ${txt_add1}      ${add1}

#Enter address2
#    [Arguments]    ${add2}
#    input text    ${txt_add2}      ${add2}

Enter city
    [Arguments]    ${city}
    input text    ${txt_city}      ${city}

Enter state
    [Arguments]    ${state}
    input text    ${txt_state}      ${state}
Enter postalcode
    [Arguments]    ${postalcode}
    input text    ${txt_postCode}      ${postalcode}

#Enter Country
#    [Arguments]    ${country}
#    input text    ${drp_country}      ${country}

Enter User Name
    [Arguments]    ${email}
    input text    ${txt_UserName}     ${email}

Enter password
    [Arguments]    ${password}
    input text    ${txt_password}      ${password}

Enter Confirmation password
    [Arguments]    ${confpassword}
    input text    ${txt_conformedPassword}      ${confpassword}

Click Register
    click button    ${btn_submit}

Verify Sucess Register
    page should contain    Thank you for registering

Close my browser
    close browser


