"use strict"

@elixirExtractApp = angular.module("elixirExtractApp", [
  'ngAnimate',
  'ngCookies',
  'ngResource',
  'ngRoute',
  'ngSanitize',
  'ngTouch',
  'ui.router',
  'satellizer',

  'elixirExtractApp.controllers',
  'elixirExtractApp.directives',
  'elixirExtractApp.filters',
  'elixirExtractApp.resources',
  'elixirExtractApp.services',
  'elixirExtractApp.interceptors',

  'CONFIG.{env}',
]).config ($authProvider, CONFIG) ->
  $authProvider.github clientId: CONFIG.auth.github.clientid
  $authProvider.baseUrl = CONFIG.api.host

@controllerModule  = angular.module 'elixirExtractApp.controllers', []
@directiveModule   = angular.module 'elixirExtractApp.directives', []
@filterModule      = angular.module 'elixirExtractApp.filters', []
@resourceModule    = angular.module 'elixirExtractApp.resources', []
@serviceModule     = angular.module 'elixirExtractApp.services', []
@configModule      = angular.module 'elixirExtractApp.config', []
@interceptorModule = angular.module 'elixirExtractApp.interceptors', []

@elixirExtractApp.run ($rootScope, $state) ->
  # Do other stuff here as needed
  console.log "App started"
