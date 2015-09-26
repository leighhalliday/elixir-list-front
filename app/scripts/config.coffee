# API host address changed on 'grunt build' by setting variable 'ENV'
# e.g. 'ENV=staging grunt deploy'
# Defaults to 'development' if not defined

angular.module('CONFIG.development', []).constant 'CONFIG',

  api:
    host: "http://localhost:4000/api"
  auth:
    github:
      clientid: "897b0e678afba260f6df"

angular.module('CONFIG.staging', []).constant 'CONFIG',

  api:
    host: "http://localhost:4000/api"

angular.module('CONFIG.production', []).constant 'CONFIG',

  api:
    host: "http://localhost:4000/api"
