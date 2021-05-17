*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
AddGuitarToCart
    Open Browser    https://www.thomann.de/fi/index.html    chrome
    Click Button    class=cookie-consent-button.js-accept-all-cookies
    Click Link    //*[@data-gtm-key-anja="GI"]
    Click Link    //*[@href="https://www.thomann.de/fi/sahkokitarat.html"]
    Click Link    //*[@href="https://www.thomann.de/fi/heavy_kitarat.html"]
    Click Link    //*[@href="https://www.thomann.de/fi/gibson_70s_flying_v_cw.htm"]
    Click Button    //*[@class="tr-button tr-button-important"]
    Close Browser

AddSnareToCart
    Open Browser    https://www.thomann.de/fi/index.html    chrome
    Click Button    class=cookie-consent-button.js-accept-all-cookies
    Click Link    //*[@data-gtm-key-anja="DR"]
    Click Link    //*[@href="https://www.thomann.de/fi/akustiset_rummut.html"]
    Click Link    //*[@href="https://www.thomann.de/fi/puurunkoiset_virvelit.html"]
    Click Link    //*[@href="https://www.thomann.de/fi/14_puurunkoiset_virvelit.html"]
    Click Link    //*[@href="https://www.thomann.de/fi/dw_satin_oil_14x06_snare.htm"]
    Click Button    //*[@class="tr-button tr-button-important"]
    Close Browser

SearchGuitar
    Open Browser    https://www.thomann.de/fi/index.html    chrome
    Click Button    class=cookie-consent-button.js-accept-all-cookies
    Input Text    //*[@name="sw"]    Solar v2
    Click Element    //*[@class="rs-icon rs-icon-magnifier magnifier-icon"]
    Click Link    //*[@href="https://www.thomann.de/fi/solar_guitars_v2.6_w_g2.htm?ref=search_rslt_Solar%20v2_452308_0_1"]
    Click Button    //*[@class="tr-button tr-button-important"]
    Close Browser

AddMultipleProducts
    Open Browser    https://www.thomann.de/fi/index.html    chrome
    Click Button    class=cookie-consent-button.js-accept-all-cookies
    Input Text    //*[@name="sw"]    Lang Signature sticks
    Click Element    //*[@class="rs-icon rs-icon-magnifier magnifier-icon"]
    Click Link    //*[@href="https://www.thomann.de/fi/vic_firth_stl_thomas_lang_signature.htm?ref=search_rslt_Lang%20Signature%20sticks_153717_0_0"]
    Input Text    //*[@name="menge"]    30
    Click Button    //*[@class="tr-button tr-button-important"]
