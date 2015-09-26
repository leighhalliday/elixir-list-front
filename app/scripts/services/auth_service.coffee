'use strict'

@serviceModule.factory 'AuthService', ($state, $auth) ->

  authenticate: (provider) ->
    $auth.authenticate(provider).then (response) ->
      localStorage.setItem 'user', JSON.stringify(response.data.user)
      localStorage.setItem 'authToken', response.data.token

  logout: ->
    $auth.logout()

  isAuthenticated: ->
    $auth.isAuthenticated()