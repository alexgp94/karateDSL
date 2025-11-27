Feature: Get Users

  Background: :
    * url baseUrl
    * def schemaUsuario = read('classpath:schemas/usuario-schema.json')

  Scenario: Get All users
    Given path '/usuarios'
    When method get
    Then status 200
    And match each response.usuarios == schemaUsuario