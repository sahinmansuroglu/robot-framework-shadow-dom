*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Aç Web Sitesi
    Open Browser    https://www.htmlelements.com/demos/menu/shadow-dom/index.htm    chrome
   
        # JavaScript kodu ile shadow DOM'a erişin ve içindeki div elementini bulun
       ${shadow_dom_element} =    Execute JavaScript    return document.querySelector("smart-ui-menu").shadowRoot.querySelector("smart-menu-items-group:nth-child(2)")
       ${ss}=       Get Text    ${shadow_dom_element}
       Log To Console    ${ss}
        # Shadow DOM içindeki div öğesine tıklamak için Selenium komutunu kullanın
        Click Element    ${shadow_dom_element}
    Sleep    5
    Close Browser
