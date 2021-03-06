require "plate_api/request"

module PlateApi
  class PostRequest < Request

    def initialize(public_key, secret, path, parameters={}, custom_server=nil)
      super(public_key, secret, "POST", path, custom_server)

      @post_parameters = parameters.to_json
    end

    def extra_request_options(request)
      request.headers['Content-Type'] = 'application/json'
      request.body = @post_parameters
    end
  end
end
