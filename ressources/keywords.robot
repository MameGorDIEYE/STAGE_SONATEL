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

#Fonction qui permet de renseigner le code avec kaabu plus
SAISIR CODE PIN 
    Wait Until Page Contains Element    ${NINE_BUTTON}     timeout=10
    Click Element    ${NINE_BUTTON}
    Sleep    1
    Click Element    ${NINE_BUTTON}
    Sleep    1
    Click Element    ${ZERO_BUTTON}
    Sleep    1
    Click Element    ${FOUR_BUTTON}

#Fonction qui permet de faire achat de crédit
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


#Tjs achat de crédit
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

   
#Pour accès OM
Acces 
    Sleep    1
    Click Element    ${OM_BUTTON}
    

#Cette fonction permet d'éffectuer un transfert
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

#Cette fonction permet au distributeur de faire des dépôt
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

#Cette fonction permet de voir l'historique des transactions   
HISTORIQUE DES TRANSACTIONS
    Wait Until Page Contains Element    ${HISTORIQUE_DES_TRANSACTIONS}    timeout=10
    Click Element    ${HISTORIQUE_DES_TRANSACTIONS}
    Sleep    2


#Cette fonctiion permet de faire le paiement senelec 
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

#Cette fonction permet de tester le paiement des factures fixes sonatel
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

#Cette fonction pour tester le paiement woyafal
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

# Vente de crédit avec distri
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


#Paiement facture SEN EAU
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

DISTRI GRILLE COMMISSION
    Wait Until Page Contains Element     ${GRILLE_COMISSION}  timeout=10
    Click Element       ${GRILLE_COMISSION}
    Wait Until Page Contains   Minimum    timeout=10
    Swipe    137  1423  137  286  3000
    sleep   2
DISTRI TRANSFERT NATIONAL
    Wait Until Page Contains Element   ${TRANSFERT}    timeout=10
    Click Element       ${TRANSFERT}
    Wait Until Page Contains Element    ${NUMERO_RETRAIT_BUTTON}    timeout=10
    Click Element    ${NUMERO_RETRAIT_BUTTON}
    Input Text Into Current Element  ${NUMERO_TEL_RAPIDO}
    sleep     1
    Click Element    ${MONTANT_RETRAIT_BUTTON}
    Input Text Into Current Element    1
    sleep    2
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    sleep     2
    Click Element       ${CONFIRMER_RECHARGE_RAPIDO}
    sleep     2

#Cette fonction permet d'effectuer 
DISTRI TRANSFERT INTERNATIONAL
    Wait Until Page Contains Element   ${TRANSFERT}    timeout=10
    Click Element       ${TRANSFERT}
    Wait Until Page Contains Element   ${INTERNATIONAL_BOX_BUTTON}    timeout=10
    Click Element       ${INTERNATIONAL_BOX_BUTTON}
    Wait Until Page Contains Element   ${PAYS_SELETED}    timeout=10
    Click Element       ${PAYS_SELETED}
    Wait Until Page Contains Element    ${INDICATIF}    timeout=10
    Click Element     ${INDICATIF}   
    sleep    1
    Click Element       ${TEL_TRANSFERT_BUTTON}
    Input Text Into Current Element   ${TEL_TRANSFERT_MALI}
    Click Element    ${MONTANT_RETRAIT_BUTTON}
    Sleep   1
    Click Element    ${PRENOM_TRANSFERT_BENEFICIAIRE}
    Input Text Into Current Element    Test_Prenom
    Swipe     220  680   220  587  1000
    Click Element    ${NOM_TRANSFERT_BENEFICIAIRE}
    Input Text Into Current Element    Test_Nom
    FOR    ${i}    IN RANGE    8    # Essaye jusqu'à 8 scrolls maximum
        ${exists}    Run Keyword And Return Status    Page Should Contain    Choisir
        Run Keyword If    ${exists}    RETURN
        Swipe    188    679    188    575    500
    END
    Click Element    xpath=//android.widget.ScrollView/android.widget.EditText[1]
    Input Text Into Current Element    77 453 76 56
    Click Element    xpath=//android.widget.ScrollView/android.widget.EditText[2]
    Input Text Into Current Element    10
    Click Element    xpath=//android.view.View[@content-desc="Choisir"]
    Click Element    xpath=//android.view.View[@content-desc="SCHOOL"]
    Click Element    ${VALIDER_RECHARGE_RAPIDO}
    Click Element    ${TEL_TRANSFERT_BUTTON}
    sleep     2
    Click Element    xpath=//android.widget.Button[@content-desc="Valider"]
    sleep     2
    Click Element    ${CONFIRMER_DEPOT_DISTRI}
    sleep     5

