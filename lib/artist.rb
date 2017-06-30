require_relative 'song.rb'
require 'pry'

class Artist

	@@song_count = 0
	@@all = []

	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
		
	end

	def add_song(song)
		@songs << song
		@@song_count += 1
		song.artist = self

	end

	def add_song_by_name(song_title)
		song = Song.new(song_title)
		add_song(song)
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		@@all.find{|artist| artist.name == name} ? (return) : new_artist = Artist.new(name)
		new_artist.save
		new_artist

	end

	def self.song_count
		@@song_count
	end

	def self.all
		@@all
	end

	def print_songs
		@songs.each{|song| puts song.name}
	end


end	