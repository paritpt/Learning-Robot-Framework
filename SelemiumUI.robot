*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Login

    open browser    https://www.google.com/intl/th/gmail/about/#   Chrome
    click link    //a[@data-action="sign in"]
    input text      //input[@type="email"]      paritbutqa.p@gmail.com
    click button    //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"]
    sleep  2s
    input text      //input[@type="password"]       paritbutqa666
    click button     //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"]
    Maximize Browser Window
    Wait Until Element Is Visible  //img[@class="gb_Ca gbii"]
    close browser


*** Test Cases ***
TC 1 : Login to Gmail
    Login


