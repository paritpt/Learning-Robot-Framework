*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Login to Fastwork

    open browser    https://auth.fastwork.co/oauth/authorize?response_type=code&client_id=be5eedd3-5e8b-42a5-a927-0f1a01c290e9&callback_url=https%3A%2F%2Ffastwork.co%2Fcallback%3Fredirect%3DLw%3D%3D&_ga=2.169553377.1947825705.1636735384-489995391.1636114109   Chrome
    input text      //input[@id="authorize-request-Credential"]      ikwaiingo@gmail.com
    click button    Next
    input text      //input[@id="signin-request-Password"]       mrmeesix666
    click button     เข้าสู่ระบบ

*** Test Cases ***
TC 1 : Login to Fastwork
    Login to Fastwork


