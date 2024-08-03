class Tascar < Formula
  TASCAR_TAG = "brewdev_0.232.2_b"
  desc "Toolbox for Acoustic Scene Creation and Rendering (tascar)"
  homepage "https://tascar.org/"
  url "https://github.com/gisogrimm/tascar", :using => :git, :tag => TASCAR_TAG

  license "GPL-2.0"

  depends_on "adwaita-icon-theme"
  depends_on "boost" => :build
  depends_on "cmake" => :build
  depends_on "coreutils" => :build # needed for the "realpath" command
  depends_on "cunit"
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
  depends_on "make" => :build
  depends_on "pkgconfig" => :build
  depends_on "qjackctl" => :recommended
  depends_on "vim" => :build
  depends_on "xerces-c"

  def install
    system "HOMEBREW_TASCAR_TAG=#{TASCAR_TAG} make -j `nproc` PREFIX=#{prefix} homebrew"
  end
end
