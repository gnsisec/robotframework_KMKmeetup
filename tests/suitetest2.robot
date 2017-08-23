*** Settings ***
Library             Selenium2Library
Test Setup          Open Browser        ${HOME_URL_LINK}    browser=gc
Test Teardown       Close Browser
Documentation       This is suitetest1.robot

*** Variable ***
${HOME_URL_LINK}        https://www.vidio.com/

*** Test Case ***
Testcase One
    [Documentation]     This is Testcase One
    Sleep               1

Testcase Two
    [Documentation]     This is Testcase Two
    Sleep               1
