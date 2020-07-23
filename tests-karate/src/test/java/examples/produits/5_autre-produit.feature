Feature: Creation d'un produit

  Background:
    * url baseUrl

  Scenario: cree le produit test

    * def getUUID =
      """
      function() {
        return java.util.UUID.randomUUID() + ''
      }
      """

    * def temp = getUUID()
    * print temp

    Given path 'Produits'
    And request {"nom": "test", "prix": 100, "prixAchat": 120}
    When method post
    Then status 201