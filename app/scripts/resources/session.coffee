'use strict'

@serviceModule.factory 'sessionsPath', (CONFIG) ->
  "#{CONFIG.api.host}/#{CONFIG.api.clientToken}/sessions/github"

@resourceModule.factory 'Session', ($resource, sessionsPath) ->
  $resource sessionsPath, {}
