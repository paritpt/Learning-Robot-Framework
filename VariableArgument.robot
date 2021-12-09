*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${gmailUrl}  https://www.google.com/intl/th/gmail/about/#
${linkSignin}  //a[@data-action="sign in"]
${uName}    paritbutqa.p@gmail.com
${uPassword}    paritbutqa666
${xuName}   //input[@type="email"]
${xuPassword}   //input[@type="password"]
${btnNext}  //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"]
${imgSignin}  //img[@class="gb_Ca gbii"]

*** Keywords ***

Login
    [Arguments]  ${user}  ${pass}
    input text      ${xuName}  ${user}
    click button    ${btnNext}
    Wait Until Element Is Visible  ${xuPassword}
    input text      ${xuPassword}  ${pass}
    click button     ${btnNext}

*** Test Cases ***
TC 1 : Login to Gmail
    open browser    ${gmailUrl}  Chrome
    click link    ${linkSignin}
    Login  ${uName}  ${uPassword}
    Maximize Browser Window
    Wait Until Element Is Visible  ${imgSignin}
    Close Browser


