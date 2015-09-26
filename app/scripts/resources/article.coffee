'use strict'

@serviceModule.factory 'articlesPath', (CONFIG) ->
  "#{CONFIG.api.host}/articles/:id"

@resourceModule.factory 'Article', ($resource, articlesPath) ->
  $resource articlesPath, {id: @id}
