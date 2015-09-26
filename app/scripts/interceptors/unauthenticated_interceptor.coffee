@elixirExtractApp.factory 'unauthenticatedInterceptor', ($q, $injector) ->

  request: (config) ->

    config.headers["Content-Type"] = "application/json"

    return config

  responseError: (response) ->
    if response.status is 401
      # If you're not authenticated do something here
      $injector.get('$state').go 'login'
      $q.reject response
    else
      response
