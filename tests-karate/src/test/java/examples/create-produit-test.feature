@ignore
Feature:

  Scenario: cree le produit test
    * def produit =
      """
      {
        "nom": "test",
        "prix": 100,
        "prixAchat": 120
      }
      """

    Given url 'http://localhost:9090/Produits'
    And request produit
    When method post
    Then status 201