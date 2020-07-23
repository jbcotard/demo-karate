Feature: recuperation d'un produit

  Background:
    * def creator = read('../create-produit-test.feature')

  Scenario: recupere le produit test apres l'avoir créé
    * def result1 = call creator
    * def locationProduit = $result1.responseHeaders['Location'][0]
    * print 'created produit : ', locationProduit

    Given url locationProduit
    When method get
    Then status 200
