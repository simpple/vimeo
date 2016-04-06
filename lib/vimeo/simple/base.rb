module Vimeo
  module Simple
    class Base
      include HTTParty
      base_uri 'https://vimeo.com/api'
      parser Vimeo::Parser

      def initialize(oauth_bearer = nil)
        @oauth_bearer = oauth_bearer
      end

      private

      def make_request(method, path, options = {})
        self.class.send method, path, default_options.merge(options)
      end

      def default_options
        default_options = {
          :headers => {}
        }

        unless @oauth_bearer.nil?
          default_options[:headers]["Authorization"] = "bearer #{@oauth_bearer}"
        end

        default_options
      end
    end
  end
end
