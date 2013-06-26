require 'pry-debugger'
# require_relative 'environment'
require 'fileutils'
require 'erb'

#fileutils
FileUtils.mkdir_p '_site'
FileUtils.mkdir_p '_site/artists'
FileUtils.mkdir_p '_site/genres'
FileUtils.mkdir_p '_site/songs'


# parser = LibraryParser.new('/Users/avi/Development/code/playlister-rb/data')
# parser.call


# TO-DO
# x create ERB template 
# Read ERB template
template_content = File.read("views/artist.erb")


# Build page

template = ERB.new(template_content)

# Make HTML

html = template.result
File.open('_site/index.html', 'w'){|file| file.write(html)}







