module Vimeo::Simple
  class Information < Vimeo::Simple::Base
    base_uri 'https://api.vimeo.com'

    # Returns this video's information.
    #
    # @param video_id [String] The video's id.
    def video(video_id)
      make_request(:get, "/videos/#{video_id}")
    end
  end
end
