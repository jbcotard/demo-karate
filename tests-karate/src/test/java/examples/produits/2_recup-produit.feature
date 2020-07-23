Feature: recuperation d'un produit

  Background:
    * url baseUrl

  Scenario: recupere un produit par son id

    * def produit =
      """
      {
        "nom": "mon Produit",
        "prix": 10,
        "prixAchat": 100
      }
      """
    Given path 'Produits'
    And request produit
    And header Content-Type = 'application/json'
    When method post
    Then status 201
    And match responseHeaders contains { Location: '#notnull' }

    * def locationProduit = responseHeaders['Location'][0]
    * print 'url produit : ', locationProduit

    Given url locationProduit
    When method get
    Then status 200
    And assert response.nom == produit.nom
