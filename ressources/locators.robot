*** Settings ***
Library    AppiumLibrary



*** Variables ***
# Les paths
${OM_BUTTON}                  xpath=//android.widget.ImageView[@content-desc="Orange Money"]
${TRANSFERT_BUTTON}           xpath=//android.widget.ImageView[@content-desc="Transfert"]
${NUMERO_BUTTON}              xpath=//android.view.View[@content-desc="Aayaya 775295826"]
${MONTANT_BUTTON}             xpath=//*[@class="android.widget.EditText"]
${CONTINUER_BUTTON}           xpath=//android.widget.Button[@content-desc="Continuer"]
${VALIDER_BUTTON}             xpath=//android.widget.Button[@content-desc="Valider"]
${CHAMP_DE_SAISIE_BUT}        xpath=//android.widget.ScrollView/android.widget.EditText[2]

# -------------------------------------------------------------------------------------------------
${PASS_INTER}                 xpath=//android.widget.ImageView[@content-desc="Pass Internationaux"]
${INPUT_PASS_INTER}           xpath=//android.widget.EditText




# New_variables : 
${MAX_IT_APP_SA16}            xpath=//android.widget.TextView[@content-desc="Max it"]
${MALIGNE_BUTTON}             xpath=//android.widget.ImageView[@content-desc="Ma ligne"]
${VOIR_PLUS}                  xpath=//android.widget.ImageView[@content-desc="Voir plus"]
${ACHAT_CREDIT}               xpath=//android.widget.ImageView[@content-desc="Achat crédit"]  
${CHAMP_DE_SAISIE_NUM}        xpath=//android.widget.EditText
${CHAMP_DE_SAISIE_MONTANT}    xpath=////android.widget.EditText[@text="1"]
${ACHETER}                    xpath=//android.widget.Button[@content-desc="Acheter"]
${VALUE}                      xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View
${NUMERO_DE_TELEPHONE}        771624736  
${ALLO_MONDE}                 xpath=//android.view.View[@content-desc="Allô Monde"] 
${PASS_ALLO_MONDE}            xpath=//android.view.View[contains(@content-desc, 'Allô monde 1000')]
${CREDIT_RECHARGE}            xpath=//android.widget.ImageView[@content-desc="Crédit recharge"]


#VAR_REAL
${NUMERO_DE_TELEPHONE}        771624736
${SAISIR_CODE_PIN}            9904
${VOIR_PLUS_BUTTON}           xpath=//android.widget.ImageView[@content-desc="Voir plus"]
${ACHAT_CREDIT_BUTTON}        xpath=//android.widget.ImageView[@content-desc="Achat crédit"]
${CHAMP_DE_SAISIE}            xpath=//android.widget.EditText
${Montant_credit_BUTTON}      xpath=(//android.widget.EditText)[2]
${Acheter_BUTTON}             xpath=//android.widget.Button[@content-desc="Acheter"]
${VALIDER_BUTTON}             xpath=//android.widget.Button[@content-desc="Valider"]
${NINE_BUTTON}                xpath=//android.widget.Button[@content-desc="9"]
${ZERO_BUTTON}                xpath=//android.widget.Button[@content-desc="0"]
${FOUR_BUTTON}                xpath=//android.widget.Button[@content-desc="4"]
${QUITTER_BUTTON}             xpath=//android.widget.Button[@content-desc="Quitter"]


#---------------------kaabu plus -------------------------------------------
${CODE}                        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
${NINE_BUTTON_KAABUPLUS}       xpath=//android.view.View[@content-desc="9"]
${ZERO_BUTTON_KAABUPLUS}       xpath=//android.view.View[@content-desc="0"]
${FOUR_BUTTON__KAABUPLUS}      xpath=//android.view.View[@content-desc="4"]
${FACTURES_BUTTON}             xpath=//android.widget.ImageView[@content-desc="Factures"]
${RAPIDO_BUTTON}               xpath=//android.widget.ImageView[@content-desc="Rapido"]
${NUMERO_CARTE_RAPIDO_BUTTON}  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.EditText[1]
${MONTANT_RECHARGE_RAPIDO}     xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.EditText[2]
${NUMERO_RECHARGE_RAPIDO}      xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.EditText[3]
${NUMERO_TEL_RAPIDO}           785256742
${NUMERO_CARTE_RAPIDO}         125561910
${NUMERO_CARTE_SENELEC}         125561910345
${VALIDER_RECHARGE_RAPIDO}     xpath=//android.widget.Button[@content-desc="Valider"]
${CONFIRMER_RECHARGE_RAPIDO}   xpath=//android.widget.Button[@content-desc="Confirmer"]
#LES VARIABLES DISTRI DEPOT
${DEPOT}                       xpath=//android.widget.ImageView[@content-desc="Dépôt"]
${num_client}                  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${MONTANT_DEPOT_DISTRI_BUTTON}         xpath=//android.widget.ScrollView/android.widget.EditText[2]
${CONFIRMER_DEPOT_DISTRI}              xpath=//android.widget.Button[@content-desc="Confirmer"]
#Historique des transactions
${HISTORIQUE_DES_TRANSACTIONS}         xpath=//android.widget.ImageView[@content-desc="Historique"]
#Paiement SENELEC
${SENELEC_BUTTON}                      xpath=//android.widget.ImageView[@content-desc="Senelec"]
${NUMERO_TEL_SENELEC}                  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.EditText[2]
${SENELEL_FIXES_BUTTON}                xpath=//android.widget.ImageView[@content-desc="Sonatel fixe"]
${NUMERO_LIGNE_FIX}                    123456789
${WOYOFAL_BUTTON}                      xpath=//android.widget.ImageView[@content-desc="Woyofal"]
${SOLDE}                               xpath=//android.view.View[@content-desc="Gérant scanner"]/android.view.View[2]
${RETRAIT}                             xpath=//android.widget.ImageView[@content-desc="Retrait"]
${NUMERO_RETRAIT_BUTTON}               xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${MONTANT_RETRAIT_BUTTON}              xpath=//android.widget.ScrollView/android.widget.EditText[2]
${DEPOT_ARGENT}                        xpath=//android.widget.ImageView[@content-desc="Dépôt"]
${CREDIT}                              xpath=//android.widget.ImageView[@content-desc="Crédit"]
${NUMERO_EXPEDITEUR_BUTTON}            xpath=//android.widget.EditText
${NUMERO_EXPEDITEUR}                   77 678 90 54
${NUMERO_RECHARGE}                   xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${MONTANT_VENTE_BUTTON}              xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${SEN_EAU_BUTTON}                    xpath=//android.widget.ImageView[@content-desc="Sen'eau"]