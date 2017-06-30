require_relative 'artist.rb'
require_relative 'mp3_importer.rb'
require_relative 'parse_module.rb'


require 'pry'

class Song

	extend Parse

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name
		@artist.nil? ? nil : @artist.name

	end

	def self.new_by_filename(file_name)
		parse(file_name, 'song_name')
	end
end