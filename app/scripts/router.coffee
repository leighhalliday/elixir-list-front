'use strict'

@elixirExtractApp.config ($urlRouterProvider, $stateProvider, $compileProvider, $httpProvider) ->

  $httpProvider.interceptors.push 'authenticatedInterceptor', 'unauthenticatedInterceptor'

  $urlRouterProvider.otherwise('/')
  $stateProvider
    .state "home",
      url: "/"
      templateUrl: "views/home.html"
      controller: "HomeCtrl as homeCtrl"
      resolve:
        articles: (Article) ->
          Article.query().$promise

    .state 'articles',
      abstract: true
      template: '<ui-view/>'

    .state 'articles.new',
      url: '/articles/new',
      templateUrl: 'views/articles/new.html',
      controller: "ArticlesNewCtrl as articlesNewCtrl"

    .state 'articles.show',
      url: '/articles/:id',
      templateUrl: 'views/articles/show.html',
      controller: "ArticlesShowCtrl as articlesShowCtrl",
      resolve:
        article: ($stateParams, Article) ->
          Article.get({id: $stateParams.id}).$promise
