@elixirExtractApp.factory 'authenticatedInterceptor', () ->

  request: (config) ->

    # Load authToken from localStorage, deleted when browser is closed
    authToken = localStorage.getItem "authToken"

    # if the user is logged in, set it here
    config.headers['Authorization'] = authToken
    config.headers["Content-Type"] = "application/json"

    return config
