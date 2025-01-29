*** Settings ***
Documentation     TEST DE FONCTIONNALITE ABONNEMENT PAY PER VIEW SUR L'APPLICATION MAXIT LITE 
Library           AppiumLibrary
Resource          ./ressources/keywords.robot
Suite Setup       !SuiteSetup    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}
Suite Teardown    !SuiteTeardown


*** Test Cases ***
#01_Start_maxit_app
    #[Documentation]    Démarrage de l'application "Maxit LITE" sur le device "${DEVICE_NAME_RZCW30WHM4Y} sur Robot CODIR"
    #OPEN APP IN PHONE    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}    ${MALIGNE_BUTTON}
    #Achat pass OM
    #Sleep    3s

#02_Achat_pass_internationnaux_maxit_app
    #[Documentation]  Cette fonction permet d'acheter un pass internationnaux
    #OPEN APP IN PHONE    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}    ${MALIGNE_BUTTON}
    #Achat pass International OM
    #Sleep    3s '''


#03_Achat_pass_internationnaux_boucle_maxit_app
#Documentation    Répétition d'un scénario d'achat de pass internationaux
#Test Setup       OPEN APP IN PHONE    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}    ${MALIGNE_BUTTON}

#*** Test Cases ***
#Exécuter Achat Pass 10 Fois Avec Intervalle
    #FOR  ${i}  IN RANGE  10
        #Log To Console    --- Exécution numéro ${i+1} ---
        #Achat pass International OM
        #Sleep    3s
        #Log  Attente de 10 minutes avant la prochaine exécution...
        #Sleep    1min
    #END

04_achat_credit_maxit_app
    [Documentation]    Démarrage de l'application "Maxit LITE" sur le device "${DEVICE_NAME_RZCW30WHM4Y} sur Robot CODIR"
    OPEN APP IN PHONE    ${ROBOT_TEL_MGD}    ${DEVICE_NAME_TEST}    ${MALIGNE_BUTTON}
    ACHAT CREDIT 
    Sleep    3s