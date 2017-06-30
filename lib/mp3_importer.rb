require 'pry'
require_relative 'parse_module.rb'



class MP3Importer

	include Parse
	attr_accessor :path

	@@files = []

	def initialize(path)
		@path = path
		
	end

	def files
		@@files  = Dir.entries(@path).select {|entry| !File.directory?(entry) }
	end

	def import
		files.each do |file|
			parse(file, 'import')
		end
	end
end