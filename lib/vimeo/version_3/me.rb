module Vimeo
  module Version3

    class Me < Vimeo::Version3::Base

      # Returns info about the user
      #
      #
      def get_me(options = {})
        make_request(:get, "/me", options)
      end

      # Returns this user's albums.
      #
      def get_albums(options = {})
        make_request(:get, "/me/albums", options)
      end

      # Returns this video's specific comment.
      #
      # @param [String] name The Album title.
      # @param [String] description The video's specific comment id.
      def add_album(options = {})
        make_request(:post, "/me/albums", options)
      end

      def get_album(album_id)
        make_request(:get, "/me/albums/#{album_id}")
      end

      def edit_album(album_id, options = {})
        make_request(:patch, "/me/albums/#{album_id}", options)
      end

      def delete_album(album_id)
        make_request(:delete, "/me/albums/#{album_id}")
      end

      # Returns list of videos for album.
      #
      def get_album_videos(album_id, options = {})
        make_request(:get, "/me/albums/#{album_id}/videos", options)
      end

      def get_album_video(album_id, video_id)
        make_request(:get, "/me/albums/#{album_id}/videos/#{video_id}")
      end

      def add_album_video(album_id, video_id)
        make_request(:put, "/me/albums/#{album_id}/videos/#{video_id}")
      end

      def remove_album_video(album_id, video_id)
        make_request(:delete, "/me/albums/#{album_id}/videos/#{video_id}")
      end

      def get_videos(options = {})
        make_request(:get, "/me/videos/", options)
      end

      def add_video(options = {})
        make_request(:post, "/me/videos/", options)
      end

      def get_video(video_id, options = {})
        make_request(:get, "/me/videos/#{video_id}", options)
      end

    end


  end # End Version3
end # End Vimeo
