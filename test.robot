
*** Settings ***
Library     SeleniumLibrary

* Variables *
${BROWSER}            chrome
${URL}                https://testlink.org/

${TITULO_TESTLINK}            TestLink           
${VERIFICACAO1}        /html/body/div/div[3]/div/h4[1]
${VERIFICACAO2}        /html/body/div/div[2]
${VERIFICACAO3}        /html/body/div/div[4]/p

${TITULO_GITHUB}       GitHub - TestLinkOpenSourceTRMS/testlink-code at testlink_1_9_20_fixed
${GITHUB_LINK}         /html/body/div/div[3]/div/a[3]
${VERIFICACAO1GITHUB}  //*[@id="repo-content-pjax-container"]/div/div/div[3]/div[2]/div/div[3]/div/div
${VERIFICACAO2GITHUB}  //*[@id="repo-content-pjax-container"]/div/div/div[3]/div[2]/div/div[1]/div/p

${SEARCH0}              Hacktoberfest 
${SEARCH1}              /html/body/div[1]/header/div/div[2]/div/div/div[1]/div/div/form/label/input[1]
${SEARCH2}              //*[@id="jump-to-suggestion-search-global"]

${CHECK_SEARCH}         /html/body/div[4]/main/div/div[3]/div/div[1]//h3[contains(text(),"Hacktoberfest")]
${ENTER_SEARCH}         /html/body/div[1]/header/div/div[2]/div/div/div[1]/div/div/form/label/input[1]
${WAIT_ENTER}           /html/body/div[4]/main/div[2]/div[2]/div/div[1]/div[1]/div[2]/p
${CHECK_ENTER}          /html/body/div[4]/main/div[2]/div[1]/div[1]/h1


* Keywords *
Passo 1: Abrir o Navegador
    Open Browser    about:blank    ${BROWSER}  headlesschrome
    Maximize Browser Window

    
Passo 2: Indo para a pagina inicial do TestLink
    Go to    ${URL}

Passo 3: Verificando se está na página do TestLink
    Wait Until Element is Visible  xpath=${VERIFICACAO1}
    Title Should Be                ${TITULO_TESTLINK}
    Page Should Contain Element    xpath=${VERIFICACAO1}
    Page Should Contain Element    xpath=${VERIFICACAO2}
    Page Should Contain Element    xpath=${VERIFICACAO3}

Passo 4: Clique no Link do GitHub
    Click Element    xpath=${GITHUB_LINK}

Passo 5: Checando se esta na pagina do GitHub
    Wait Until Element Is Visible  xpath=${VERIFICACAO1GITHUB}
    Title Should Be                ${TITULO_GITHUB}
    Page Should Contain Element    xpath=${VERIFICACAO1GITHUB}
    Element Text Should Be         xpath=${VERIFICACAO2GITHUB}    TestLink Open Source Test & Requirement Management System



Close the browser
    Close Browser
   

* Test Cases *
Cenário de teste
    Passo 1: Abrir o Navegador
    Passo 2: Indo para a pagina inicial do TestLink
    Passo 3: Verificando se está na página do TestLink
    Passo 4: Clique no Link do GitHub
    Passo 5: Checando se esta na pagina do GitHub


    Close the browser