'use strict'

@controllerModule.controller 'ArticlesNewCtrl', ($http, $state, Article) ->

  @article = {}

  @create = =>
    Article.save(
      { article: @article },

      (successResponse) =>
        console.log "success", successResponse
        $state.go 'home'

      (errorResponse) =>
        console.log "error", "Please fix errors below and resubmit."
    )

  return @
