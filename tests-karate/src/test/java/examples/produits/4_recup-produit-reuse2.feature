Feature: recuperation d'un produit

  Background:
    * def getter = read('../get-produit.feature')

  Scenario: recupere le produit par son id
    * table produits
      | id |
      | 2  |
      | 1  |
      | 3  |
    * def result1 = call getter produits



