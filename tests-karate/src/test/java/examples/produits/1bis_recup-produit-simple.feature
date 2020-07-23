Feature: recuperation simple d'un produit

  Background:
    * url baseUrl

  Scenario: recupere la liste des produits
    Given path "Produits"
    When method get
    Then status 200
    And match response[0] ==
    """
    {"id":'#notnull',"nom":"Ordinateur portable","prix":350,"prixAchat":120}
    """

