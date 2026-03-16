cask "sidebeam" do
  version "0.2.1"
  sha256 "6ddb237dcdafd45be2cfa5998d0cedbddf7f476b2d4f0c4d4f1d568db22581ee"

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
