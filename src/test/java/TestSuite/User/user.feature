Feature: User Module
  Background:
    Given url "https://petstore.swagger.io/v2/"
    And print "--Connect petstore API--"

  Scenario: Add new user
    * def reqBody = {"id": 3,"username": "aishatesting0001","firstName": "aisha0001","lastName": "testing","email": "a0001@a.com","password": "12345","phone": "0897","userStatus": 0}
    When url "https://petstore.swagger.io/v2/user"
    And request reqBody
    When method post
    Then print response
    And status 200

  Scenario: add user with array
    * def reqBody = [{"id": 3,"username": "aishatesting0002","firstName": "aisha0002","lastName": "testing","email": "a0002@a.com","password": "12345","phone": "0897","userStatus": 0}, {"id": 3,"username": "aishatesting0003","firstName": "aisha0003","lastName": "testing","email": "a003@a.com","password": "12345","phone": "0897","userStatus": 0}]
    When url "https://petstore.swagger.io/v2/user/createWithArray"
    And request reqBody
    When method post
    Then print response
    And status 200

  Scenario: add user with list
    * def reqBody = [{"id": 3,"username": "aishatesting0004","firstName": "aisha0004","lastName": "testing","email": "a0004@a.com","password": "12345","phone": "0897","userStatus": 0}, {"id": 3,"username": "aishatesting0005","firstName": "aisha0005","lastName": "testing","email": "a0005@a.com","password": "12345","phone": "0897","userStatus": 0}]
    When url "https://petstore.swagger.io/v2/user/createWithList"
    And request reqBody
    When method post
    Then print response
    And status 200

  Scenario: Get user by username
    When url "https://petstore.swagger.io/v2/user/aishatesting0001"
    When method get
    Then print response
    And status 200

  Scenario: Get user login
    When url "https://petstore.swagger.io/v2/user/login"
    And params {username:aishatesting0001}
    And params {password:12345}
    When method get
    Then print response
    And status 200

  Scenario: update user
    * def reqBody = {"id": 3,"username": "aishatesting0001","firstName": "aishaaja","lastName": "testingaja","email": "aaja@a.com","password": "12345","phone": "0897","userStatus": 0}
    When url "https://petstore.swagger.io/v2/user/aishatesting0001"
    And request reqBody
    When method put
    Then print response
    And status 200

  Scenario: Get updated user
    When url "https://petstore.swagger.io/v2/user/aishatesting0001"
    When method get
    Then print response
    And status 200

  Scenario: delete user
    When url "https://petstore.swagger.io/v2/user/aishatesting0002"
    When method delete
    Then print response
    And status 200

  Scenario: get success deleted user
    When url "https://petstore.swagger.io/v2/user/aishatesting0002"
    When method delete
    Then print response
    And status 200

  Scenario: update user not found
    * def reqBody = {"id": 3,"username": "fff","firstName": "ff","lastName": "ff","email": "fff","password": "fdf","phone": "0897","userStatus": 0}
    When url "https://petstore.swagger.io/v2/user/aishatesting28428394829"
    And request reqBody
    When method put
    Then print response
    And status 404

  Scenario: delete user not found
    When url "https://petstore.swagger.io/v2/user/aishatesting200"
    When method delete
    Then print response
    And status 404

  Scenario: Get user logout
    When url "https://petstore.swagger.io/v2/user/logout"
    When method get
    Then print response
    And status 200

