*** Settings ***
Library             Selenium2Library
Suite Setup         Open Browser        ${HOME_URL_LINK}    browser=gc
Suite Teardown      Close Browser
Documentation       This is suitetest1.robot

*** Variable ***
${HOME_URL_LINK}        https://www.vidio.com/

*** Test Case ***
Testcase One
    [Documentation]     This is keyword driven development
    search video        SEA GAMES 2017
    open tab            Pengguna
    open user           SEA GAMES 2017

*** Keywords ***
search video
    [Arguments]         ${search_keyword}
    input text          id=q                ${search_keyword}
    click button        css=.button-search

open tab
    [Arguments]         ${tab_name}
    click element       jquery=.search__nav-item:contains(${tab_name})

open user
    [Arguments]         ${name}
    click element       jquery=.user-card__info-name:contains(${name})
