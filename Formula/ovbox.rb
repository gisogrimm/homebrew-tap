class Ovbox < Formula
  OVBOX_TAG = "v0.26.1"
  desc "ORLANDOviols consort box remote music collaboration software (OVBOX)"
  homepage "https://ovbox.de/"
  url "https://github.com/gisogrimm/ov-client", :using => :git, :tag => OVBOX_TAG

  license "GPL-2.0"

  depends_on "adwaita-icon-theme"
  depends_on "boost" => :build
  depends_on "cmake" => :build
  depends_on "coreutils" => :build # needed for the "realpath" command
  depends_on "cpprestsdk"
  depends_on "cunit"
  depends_on "curl"
  depends_on "eigen"
  depends_on "fftw"
  depends_on "glibmm"
  depends_on "gsl"
  depends_on "gtkmm3"
  depends_on "gtksourceviewmm3"
  depends_on "jack"
  depends_on "jpeg"
  depends_on "labstreaminglayer/tap/lsl"
  depends_on "liblo"
  depends_on "libltc"
  depends_on "libmatio"
  depends_on "libsamplerate"
  depends_on "libsndfile"
  depends_on "libsoundio"
  depends_on "make" => :build
  depends_on "nlohmann-json"
  depends_on "node"
  depends_on "openssl"
  depends_on "pkgconfig" => :build
  depends_on "qjackctl" => :recommended
  depends_on "vim" => :build
  depends_on "xerces-c"

  def install
    system "HOMEBREW_OVBOX_TAG=#{OVBOX_TAG} make SHELL=/bin/zsh HOMEBREW_OVBOX_TAG=#{OVBOX_TAG} -j `nproc` PREFIX=#{prefix} homebrew"
  end
end
