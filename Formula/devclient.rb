class Devclient < Formula
	desc "Conclusive Development Cable Client"
	homepage "https://github.com/conclusiveeng/devclient"
	head "https://github.com/conclusiveeng/devclient.git", tag => "0.1.2"

	depends_on "cmake"
	depends_on "libtool"
	depends_on "automake"
	depends_on "libusb"
	depends_on "libusb-compat"
	depends_on "hidapi"
	depends_on "libftdi"
	depends_on "gtkmm3"
	depends_on "telnet"

	def install
		system "mkdir -pv build && cd build && cmake .. && make"
	end
end