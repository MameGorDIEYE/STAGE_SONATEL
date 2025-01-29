*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Resource   ./locators.robot
Resource   ./variables.robot



*** Keywords ***

!SuiteSetup
    [Arguments]    ${REMOTE_URL_APPIUM}    ${DEVICE_NAME}
    Log    Open Application ${REMOTE_URL_APPIUM} platformName=Android automationName=UiAutomator2 appPackage=${PACKAGE_NAME_KAABU_PLUS} appActivity=${ACTIVITY_NAME2} appium:udid=${DEVICE_NAME} noReset=${APP_RESET} fullReset=${APP_FULL_reset}


!SuiteTeardown
    Close All Applications

OPEN APP IN PHONE 
    [Arguments]    ${REMOTE_URL_APPIUM}    ${DEVICE_NAME}    ${BUTTON_TO_CHECK}
    Open Application   ${REMOTE_URL_APPIUM}  platformName=Android  automationName=UiAutomator2  automationName=Appium  appPackage=${PACKAGE_NAME_KAABU_PLUS}  appActivity=${ACTIVITY_NAME2}  appium:udid=${DEVICE_NAME}  noReset=${APP_RESET}  fullReset=${APP_FULL_reset}
    #Wait Until Page Contains Element    ${BUTTON_TO_CHECK}    timeout=30

Click Quitter
    Wait Until Page Contains    Quitter     timeout=10
    Click Element    ${QUITTER_BUTTON}
    Sleep    1

Achat pass OM
    Sleep    1
    Click Element    ${VOIR_PLUS}
    Sleep    2
    Click Element    ${ACHAT_CREDIT}
    Wait Until Page Contains Element    ${CHAMP_DE_SAISIE_NUM}    timeout=10
    Sleep    2
    Click Element    ${CHAMP_DE_SAISIE_NUM}
    Input Text Into Current Element    ${NUMERO_DE_TELEPHONE}
    sleep    2
    Click Element    ${ACHETER}
    #Wait Until Page Contains Element    ${CHAMP_DE_SAISIE_BUT}    timeout=10
    sleep    2s
    Click Element  ${CHAMP_DE_SAISIE_BUT}
    sleep    2s
    Input Text Into Current Element    1
    Click Element    ${ACHETER}
    sleep     5s

Achat pass International OM
    Sleep    1
    Click Element    ${VOIR_PLUS}
    Sleep    2
    Click Element    ${PASS_INTER}
    Wait Until Page Contains Element    ${INPUT_PASS_INTER}    timeout=10
    Sleep    2 
    Click Element    ${INPUT_PASS_INTER}
    Input Text Into Current Element    ${NUMERO_DE_TELEPHONE}
    Sleep    2
    Click Element    ${ACHETER}
    sleep    2
    Click Element    ${ALLO_MONDE}
    sleep    2
    Click Element    ${PASS_ALLO_MONDE}
    sleep    2
    Click Element    ${ACHETER}
    sleep    2
    Click Element     ${CREDIT_RECHARGE}
    Log  Solde insuffisant
    Log  Le programme est terminé
    Log To Console  Fin du scénario
    sleep   2

SAISIR CODE PIN 
    Wait Until Page Contains Element    ${NINE_BUTTON}     timeout=10
    Click Element    ${NINE_BUTTON}
    Sleep    1
    Click Element    ${NINE_BUTTON}
    Sleep    1
    Click Element    ${ZERO_BUTTON}
    Sleep    1
    Click Element    ${FOUR_BUTTON}

ACHAT CREDIT 
    Wait Until Page Contains Element    ${VOIR_PLUS_BUTTON}    timeout=10
    Click Element    ${VOIR_PLUS_BUTTON}
    Wait Until Page Contains Element    ${ACHAT_CREDIT_BUTTON}    timeout=10 
    Sleep    2
    Click Element    ${ACHAT_CREDIT_BUTTON}
    Wait Until Page Contains Element    ${CHAMP_DE_SAISIE}    timeout=10
    Sleep    1
    Click Element    ${CHAMP_DE_SAISIE}
    Sleep    1
    Input Text Into Current Element     773145686
    sleep     1
    Wait Until Page Contains Element    ${Acheter_BUTTON}    timeout=10
    Click Element    ${Acheter_BUTTON}
    Sleep    1
    Wait Until Page Contains    montant   timeout=10 
    Click Element    ${Montant_credit_BUTTON}
    Sleep    1
    Input Text Into Current Element    1
    Sleep    1
    Wait Until Page Contains Element    ${Acheter_BUTTON}    timeout=10
    Click Element    ${Acheter_BUTTON}
    Sleep    2 
    Wait Until Page Contains Element    ${VALIDER_BUTTON}    timeout=10
    Click Element    ${VALIDER_BUTTON}       
    Sleep    2
    SAISIR CODE PIN
    Wait Until Page Contains    Nouveau solde    timeout=10
    Sleep     2



ACHAT1 CREDIT 
    Wait Until Page Contains Element    ${VOIR_PLUS_BUTTON}    timeout=10
    Click Element    ${VOIR_PLUS_BUTTON}
    Wait Until Page Contains Element    ${ACHAT_CREDIT_BUTTON}    timeout=10 
    Sleep    1
    Click Element    ${ACHAT_CREDIT_BUTTON}
    Sleep    1
    Wait Until Page Contains Element    ${CHAMP_DE_SAISIE}    timeout=10 
    Click Element    ${CHAMP_DE_SAISIE}
    Sleep    1
    Input Text Into Current Element     773145686
    Click Element    ${Acheter_BUTTON}
    Wait Until Page Contains    montant   timeout=10 
    Click Element    ${Montant_credit_BUTTON}
    Sleep    1
    Input Text Into Current Element    1
    Sleep    1
    Click Element    ${Acheter_BUTTON}Acheter_BUTTON
    Wait Until Page Contains    insuffisant    timeout=10 
    Sleep    2

   


Acces 
    Sleep    1
    Click Element    ${OM_BUTTON}
    

Effectuer un transfert
    Click Element    ${TRANSFERT_BUTTON}
    Sleep    1
    Click Element    ${CHAMP_DE_SAISIE}
    Sleep    2
    Input Text Into Current Element    ${NUMERO_DE_TELEPHONE}
    Sleep    1
    Click Element    ${CONTINUER_BUTTON}
    Sleep    1
    Input Text Into Current Element    1
    Sleep    1
    Click Element    ${CONTINUER_BUTTON}
    Wait Until Page Contains    insuffisant    timeout=10
    
# ----------------------------------------------------------
#Fonction Saisir Code pin kabbu plus
SAISIR CODE PIN KAABUPLUS
    sleep   2
    Wait Until Page Contains Element  ${NINE_BUTTON_KAABUPLUS}     timeout=10
    Click Element    ${NINE_BUTTON_KAABUPLUS}
    sleep     1
    Click Element    ${NINE_BUTTON_KAABUPLUS}
    sleep     1
    Click Element    ${ZERO_BUTTON_KAABUPLUS}
    sleep     1
    Click Element    ${FOUR_BUTTON__KAABUPLUS}
    sleep     2
#Les fonctions de kaabuplus
#fonction pour ouvrir l'application Kaabu plus 
OUVRIR KAABU PLUS
    Wait Until Page Contains Element    ${NINE_BUTTON_KAABUPLUS}    timeout=10
    SAISIR CODE PIN KAABUPLUS
    sleep    3s

#Fonction pour achat rapido sur kaabu plus
ACHAT RAPIDO 
        Wait Until Page Contains Element    ${FACTURES_BUTTON}    timeout=10
        Click Element    ${FACTURES_BUTTON}
        sleep     2s
        Wait Until Page Contains Element    ${RAPIDO_BUTTON}    timeout=10
        Click Element    ${RAPIDO_BUTTON}
        sleep     2
        Wait Until Page Contains Element    ${NUMERO_CARTE_RAPIDO_BUTTON}    timeout=10
        Click Element    ${NUMERO_CARTE_RAPIDO_BUTTON}
        Input Text Into Current Element      ${NUMERO_CARTE_RAPIDO}
        sleep     2
        Wait Until Page Contains Element    ${MONTANT_RECHARGE_RAPIDO}    timeout=10
        Click Element    ${MONTANT_RECHARGE_RAPIDO}
        Input Text Into Current Element    1
        sleep     2
        Wait Until Page Contains Element    ${NUMERO_RECHARGE_RAPIDO}    timeout=10
        Click Element    ${NUMERO_RECHARGE_RAPIDO}
        Input Text Into Current Element  ${NUMERO_TEL_RAPIDO}  
        sleep     2
        Click Element     ${VALIDER_RECHARGE_RAPIDO}
        sleep     2
        Click Element     ${CONFIRMER_RECHARGE_RAPIDO}
        sleep     2


DEPOT DISTRI RAPIDO
    Wait Until Page Contains Element    ${DEPOT}    timeout=10
    Click Element    ${DEPOT}
    Sleep   2
    Wait Until Page Contains Element    ${num_client}    timeout=10
    Click Element    ${num_client}
    Input Text Into Current Element  ${NUMERO_TEL_RAPIDO}
    sleep     2
    Click Element    ${MONTANT_DEPOT_DISTRI_BUTTON} 
    Input Text Into Current Element  ${MONTANT_RECHARGE_RAPIDO}  
    sleep     2
    Click Element    ${VALIDER_BUTTON}
    Sleep   2
    Click Element      ${CONFIRMER_RECHARGE_RAPIDO} 
    Sleep   2

    
HISTORIQUE DES TRANSACTIONS
    Wait Until Page Contains Element    ${HISTORIQUE_DES_TRANSACTIONS}    timeout=10
    Click Element    ${HISTORIQUE_DES_TRANSACTIONS}
    Sleep    2


PAIEMENT SENELEC
    Wait Until Page Contains Element    ${FACTURES_BUTTON}    timeout=10
    Click Element    ${FACTURES_BUTTON}
    sleep     2s
    Wait Until Page Contains Element     ${SENELEC_BUTTON}     timeout=10
    Click Element    ${SENELEC_BUTTON} 
    sleep     2
    Wait Until Page Contains Element     ${NUMERO_CARTE_RAPIDO_BUTTON}    timeout=10
    Click Element    ${NUMERO_CARTE_RAPIDO_BUTTON}
    Input Text Into Current Element      ${NUMERO_CARTE_SENELEC}
    sleep     2
    Click Element   ${NUMERO_TEL_SENELEC} 
    Input Text Into Current Element      ${NUMERO_TEL_RAPIDO}
    sleep   2
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    sleep     2

PAIEMENT FACTURES FIXES
    Wait Until Page Contains Element    ${FACTURES_BUTTON}    timeout=10
    Click Element    ${FACTURES_BUTTON}
    sleep     2s
    Wait Until Page Contains Element     ${SENELEL_FIXES_BUTTON}     timeout=10
    Click Element    ${SENELEL_FIXES_BUTTON} 
    sleep     2
    Wait Until Page Contains Element     ${NUMERO_CARTE_RAPIDO_BUTTON}    timeout=10
    Click Element    ${NUMERO_CARTE_RAPIDO_BUTTON}
    Input Text Into Current Element      ${NUMERO_LIGNE_FIX}
    sleep     2
    Click Element   ${NUMERO_TEL_SENELEC} 
    Input Text Into Current Element      ${NUMERO_TEL_RAPIDO}
    sleep   2
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    sleep     2

PAIEMENT WOYOFAL 
    Wait Until Page Contains Element    ${FACTURES_BUTTON}    timeout=10
    Click Element    ${FACTURES_BUTTON}
    sleep     2s
    Wait Until Page Contains Element     ${WOYOFAL_BUTTON}      timeout=10
    Click Element    ${WOYOFAL_BUTTON}  
    sleep     2
    Wait Until Page Contains Element    ${NUMERO_CARTE_RAPIDO_BUTTON}    timeout=10
    Click Element    ${NUMERO_CARTE_RAPIDO_BUTTON}
    Input Text Into Current Element      ${NUMERO_CARTE_SENELEC}
    sleep     2
    Wait Until Page Contains Element    ${MONTANT_RECHARGE_RAPIDO}    timeout=10
    Click Element    ${MONTANT_RECHARGE_RAPIDO}
    Input Text Into Current Element    1
    sleep     2
    Wait Until Page Contains Element    ${NUMERO_RECHARGE_RAPIDO}    timeout=10
    Click Element    ${NUMERO_RECHARGE_RAPIDO}
    Input Text Into Current Element  ${NUMERO_TEL_RAPIDO}  
    sleep     2
    Click Element     ${VALIDER_RECHARGE_RAPIDO}
    sleep     2
    Click Element     ${CONFIRMER_RECHARGE_RAPIDO}
    sleep     2

SOLDE DISTRI 
    Wait Until Page Contains Element    ${SOLDE}    timeout=10
    Click Element  ${SOLDE}
    sleep     2s
    

RETRAIT DISTRI  
    Wait Until Page Contains Element    ${RETRAIT}    timeout=10
    Click Element  ${RETRAIT}
    sleep    1
    Wait Until Page Contains Element    ${NUMERO_RETRAIT_BUTTON}    timeout=10
    Click Element    ${NUMERO_RETRAIT_BUTTON}
    Input Text Into Current Element  ${NUMERO_TEL_RAPIDO}
    sleep     1
    Click Element    ${MONTANT_RETRAIT_BUTTON}
    Input Text Into Current Element    1
    sleep    2
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    sleep     2
    Click Element   ${CONFIRMER_RECHARGE_RAPIDO}
    sleep     2


DEPOT DISTRI
    Wait Until Page Contains Element    ${DEPOT}    timeout=10
    Click Element  ${DEPOT}
    sleep    1
    Wait Until Page Contains Element    ${NUMERO_RETRAIT_BUTTON}    timeout=10
    Click Element    ${NUMERO_RETRAIT_BUTTON}
    Input Text Into Current Element  ${NUMERO_TEL_RAPIDO}
    sleep     1
    Click Element    ${MONTANT_RETRAIT_BUTTON}
    Input Text Into Current Element    1
    sleep    2
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    sleep     2
    #Click Element    ${NUMERO_EXPEDITEUR_BUTTON}
    #Input Text Into Current Element    ${NUMERO_EXPEDITEUR}
    #Click Element   ${CONFIRMER_RECHARGE_RAPIDO}
    #sleep     2

DISTRI VENTE CREDIT
    Wait Until Page Contains Element    ${CREDIT}    timeout=10
    Click Element    ${CREDIT}
    sleep    1
    Wait Until Page Contains Element    ${NUMERO_RECHARGE}    timeout=10
    Click Element    ${NUMERO_RECHARGE}
    Input Text Into Current Element      ${NUMERO_TEL_RAPIDO}
    sleep     3
    Click Element At Coordinates     86      643
    Wait Until Page Contains Element  ${MONTANT_VENTE_BUTTON}   timeout=10
    Click Element     ${MONTANT_VENTE_BUTTON}
    Input Text Into Current Element    1
    sleep    1
    Click Element      ${VALIDER_BUTTON}
    sleep    1
    Click Element       ${CONFIRMER_RECHARGE_RAPIDO}
    sleep     2


DISTRI PAIEMENT SEN EAU
    Wait Until Page Contains Element    ${FACTURES_BUTTON}    timeout=10
    Click Element    ${FACTURES_BUTTON}
    sleep     2s
    Wait Until Page Contains Element     ${SEN_EAU_BUTTON}     timeout=10
    Click Element    ${SEN_EAU_BUTTON} 
    sleep     2
    Wait Until Page Contains Element     ${NUMERO_CARTE_RAPIDO_BUTTON}    timeout=10
    Click Element    ${NUMERO_CARTE_RAPIDO_BUTTON}
    Input Text Into Current Element      23678905436
    sleep     2
    Click Element   ${NUMERO_TEL_SENELEC} 
    Input Text Into Current Element      ${NUMERO_TEL_RAPIDO}
    sleep   2
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    sleep     2
