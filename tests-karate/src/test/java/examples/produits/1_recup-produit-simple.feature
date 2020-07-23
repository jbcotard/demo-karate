Feature: recuperation simple d'un produit

  Scenario: recupere la liste des produits
    Given url "http://localhost:9090/Produits"
    When method get
    Then status 200
    And match response[0] ==
    """
    {"id":'#notnull',"nom":"Ordinateur portable","prix":350,"prixAchat":120}
    """

