'use strict'

@controllerModule.controller 'NavCtrl', ($scope, AuthService) ->

  @authenticate = (provider) ->
    AuthService.authenticate(provider)

  @logout = ->
    AuthService.logout()

  @isAuthenticated = ->
    AuthService.isAuthenticated()

  @currentUser = ->
    JSON.parse(localStorage.getItem("user"))

  return @
