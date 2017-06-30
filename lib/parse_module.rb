module Parse
	def parse(file_name, type)
		parsed_file = file_name.split(" - ")
		new_artist = Artist.find_or_create_by_name(parsed_file[0])
		(return) if new_artist.nil?
		new_song = Song.new(parsed_file[1])
		new_artist.add_song(new_song)

		if type == 'import'
			new_artist
		elsif type == 'song_name'
			new_song
		end

	end
end