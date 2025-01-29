*** Settings ***
Documentation     TEST DE FONCTIONNALITE ABONNEMENT PAY PER VIEW SUR L'APPLICATION MAXIT LITE 
Library           AppiumLibrary
Resource          ./ressources/keywords.robot
Suite Setup       !SuiteSetup    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}
Suite Teardown    !SuiteTeardown


*** Test Cases ***

01_kabu_plus_achat_rapido
    [Documentation]    Démarrage de l'application "KABU PLUS" sur le device "${DEVICE_NAME_RZCW30WHM4Y}
    OPEN APP IN PHONE    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}    ${CODE}
    OUVRIR KAABU PLUS
    #Achat Rapido
    #DEPOT DISTRI
    #HISTORIQUE DES TRANSACTIONS 
    #PAIEMENT Smaxit_lite/kabu_plus_distri_solde.robot
    #PAIEMENT FACTURES FIXES
    #PAIEMENT WOYOFAL
    #SOLDE DISTRI
    RETRAIT DISTRI  