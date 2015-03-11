require 'csv'
require_relative 'album'
require_relative 'track'
require 'pry'

albums = []
album_duration = 0

CSV.foreach('space_jams.csv', headers: true, header_converters: :symbol) do |row|
  track = row.to_hash
  album = albums.find { |a| a.id == track[:album_id] }

  # if the album hasn't been added to the albums array yet, add it
  if album.nil?
    album_duration = album_duration + track[:duration_ms].to_i

    album = Album.new(track[:album_id], track[:album_name], track[:artists], album_duration)
    albums << album
  end

  # add the track to the album's @tracks instance variable
  # track_to_hash = Track.new(track[:album_id], track[:track_id], track[:title], track[:track_number], track[:duration_ms])
  # album.tracks << track_to_hash
  track = track[:title]
  album.something << track
  album_duration = 0
end

# print out the summary for each album
albums.each do |album|
  puts album.summary
end

#
# albums.each do |album|
#   puts album.title
# end
