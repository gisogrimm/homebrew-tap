class Tascar < Formula
  TASCAR_TAG = "release_0.232.2"
  desc "Toolbox for Acoustic Scene Creation and Rendering (tascar)"
  homepage "https://tascar.org/"
  url "https://github.com/gisogrimm/tascar", :using => :git, :tag => TASCAR_TAG

  license "GPL-2.0"

  depends_on "jack"
  depends_on "qjackctl" => :recommended
  depends_on "libsndfile"
  depends_on "pkgconfig" => :build
  depends_on "portaudio"
  depends_on "liblo"
  depends_on "eigen" => :build
  depends_on "coreutils" => :build # needed for the "realpath" command
  depends_on "labstreaminglayer/tap/lsl"

  # cmake, boost needed for the unit tests. We execute those during homebrew build.
  depends_on "cmake" => :build
  depends_on "boost" => :build

  def install
    system "HOMEBREW_TASCAR_TAG=#{TASCAR_TAG} make"
    system "HOMEBREW_TASCAR_TAG=#{TASCAR_TAG} make install"
  end
end
