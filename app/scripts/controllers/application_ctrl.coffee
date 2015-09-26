'use strict'

@controllerModule.controller 'ApplicationCtrl', (AuthService) ->

  @isAuthenticated = ->
    AuthService.isAuthenticated()

  return @
