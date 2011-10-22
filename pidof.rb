require 'formula'

class Pidof < Formula
	url 'https://github.com/kroepke/brew-packages/raw/master/pidof-0.1.4.tar.gz' # as long as the github repo is not deleted it's fine...
	homepage 'http://nightproductions.net/cli.htm'
	md5 '663763ee1feb0596fa3731aafa7e1880'
	version '0.1.4'
	
	def install
		system "make all"
		man1.install gzip("pidof.1")
		bin.install "pidof"
	end
end
