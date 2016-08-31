module Vimeo
  module Version3

    class Video < Vimeo::Version3::Base

      # Returns this video's information.
      #
      # @param [String] video_id The video's id.
      def get(video_id, options = {})
        make_request(:get, "/videos/#{video_id}", options)
      end

      # Returns this video's comments.
      #
      # @param [String] video_id The video's id.
      def get_comments(video_id, options = {})
        make_request(:get, "/videos/#{video_id}/comments", options)
      end

      # Returns this video's specific comment.
      #
      # @param [String] video_id The video's id.
      # @param [String] comment_id The video's specific comment id.
      def get_comment(video_id, comment_id, options = {})
        make_request(:get, "/videos/#{video_id}/comments/#{comment_id}", options)
      end

      # Returns list of videos.
      #
      def list(options = {})
        make_request(:get, "/videos", options)
      end

      # Returns this video's categories.
      #
      # @param [String] video_id The video's id.
      def get_categories(video_id, options = {})
        make_request(:get, "/videos/#{video_id}/categories", options)
      end

      # Returns this video's related videos.
      #
      # @param [String] video_id The video's id.
      def get_related_videos(video_id, query = {})
        options = {
            query: {filter: 'related'}
        }
        options.merge!(query)
        puts options
        make_request(:get, "/videos/#{video_id}/videos", options)
      end

    end


  end # End Version3
end # End Vimeo
