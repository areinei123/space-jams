require 'pry'
class Track
  def initialize (album_id,track_id,title,track_number,duration_ms)
    @album_id = album_id
    @track_id = track_id
    @title = title
    @track_number = track_number
    @duration_ms = duration_ms
  end

  attr_accessor :album_id
  attr_accessor :track_id
  attr_accessor :title
  attr_accessor :track_number
  attr_accessor :duration_ms

  def album_id
    @album_id
  end

  def track_id
    @track_id
  end

  def title
    @title
  end

  def track_number
    @track_number
  end

  def duration
    @album_duration = @album_duration + @duration_ms
  end
  def summary
<<SUMMARY
- "#{title}"
SUMMARY
  end
end
