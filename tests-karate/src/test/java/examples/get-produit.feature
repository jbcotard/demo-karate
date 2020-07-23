@ignore
Feature:

  Scenario: recupere un produit

    Given url 'http://localhost:9090/'
    And path 'Produits', id
    When method get
    Then status 200
