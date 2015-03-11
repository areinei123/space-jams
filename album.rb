require 'pry'
class Album
  def initialize (album_id,album_name,artists,album_duration)
    @album_id = album_id
    # @track_id = track_id
    # @title = title
    # @track_number =track_number
    # @duration = duration_ms
    @album_name = album_name
    @artists = artists
    @track_list = []
    @album_duration = album_duration
  end

  attr_accessor :album_id
  attr_accessor :track_id
  attr_accessor :title
  attr_accessor :track_number
  attr_accessor :duration_ms

  def id
    @album_id
  end

  def album_name
    @album_name
  end

  def artists
    @artists
  end

  def duration
    duration = (@album_duration / 6000).to_f

    duration
  end

  def something
    @track_list
  end

  def summary
<<SUMMARY
Name: #{album_name}
Artist(s): #{artists}
Duration: #{duration}
Tracks: #{something}

SUMMARY
  end
end
