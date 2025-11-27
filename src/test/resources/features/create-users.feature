Feature: Create User

  Background:
    * url baseUrl
    * def gen = read('classpath:helpers/dataGenerator.js')
    * def nomeUsuario = gen.randomName()


  Scenario: Create User
    * def body =
      """
      {
        "nome": "#(nomeUsuario)",
        "email": "#(gen.randomEmail(nomeUsuario))",
        "password": "1234",
        "administrador": "true"
      }
      """
    Given path 'usuarios'
    And request body
    When method post
    Then status 201
    And match response.message == "Cadastro realizado com sucesso"
