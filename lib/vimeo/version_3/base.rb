module Vimeo
  module Version3
    class Base
      include HTTParty
      base_uri 'https://api.vimeo.com'
      parser Vimeo::Parser

      def initialize(oauth_bearer = nil, api_version = "3.0")
        @oauth_bearer = oauth_bearer
	@vimeo_api_version = api_version
      end

      private

      def make_request(method, path, options = {})
        parse_response(self.class.send method, path, default_options.merge(options))
      end

      def parse_response(response)
        JSON.parse(response)
      end

      def default_options
        default_options = {
          :headers => {}
        }

        unless @oauth_bearer.nil?
          default_options[:headers]["Authorization"] = "bearer #{@oauth_bearer}"
        end
        
	unless @vimeo_api_version.nil?
          default_options[:headers]["Accept"] = "application/vnd.vimeo.*+json;version=#{@vimeo_api_version}"
        end

        default_options
      end
    end
  end
end
