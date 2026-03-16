cask "sidebeam" do
  version "0.2.0"
  sha256 "a6b1fd97d8463f4bfb98d55765987dba1d5007672718e31ab04b754113c1dc71"

  url "https://github.com/quanghm/sidebeam/releases/download/v#{version}/SideBeam-#{version}-macos.zip"
  name "SideBeam"
  desc "Native macOS/iOS PDF presenter console"
  homepage "https://github.com/quanghm/sidebeam"

  depends_on macos: ">= :sonoma"

  app "SideBeam.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SideBeam.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/com.quanghm.sidebeam",
    "~/Library/Preferences/com.quanghm.sidebeam.plist",
  ]
end
