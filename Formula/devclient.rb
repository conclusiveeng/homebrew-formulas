class Devclient < Formula
	desc "Conclusive Development Cable Client"
	homepage "https://github.com/conclusiveeng/devclient"
	head "https://github.com/conclusiveeng/devclient.git"

	depends_on "cmake" => :build
	depends_on "libtool" => :build
	depends_on "automake" => :build
	depends_on "libusb" => :build
	depends_on "libusb-compat" => :build
	depends_on "hidapi" => :build
	depends_on "libftdi" => :build
	depends_on "gtkmm3" => :build
	depends_on "telnet" => :build

	def install
		system "mkdir -pv build && cd build && cmake .. && make"
	end
end