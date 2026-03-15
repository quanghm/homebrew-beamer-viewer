cask "beamer-viewer" do
  version "0.0.3"
  sha256 "2651464cbb434e6e04e5cead9d96cb21c2fff8c9d2fe0f12a733d8f341b6109e"

  url "https://github.com/quanghm/beamer-viewer/releases/download/v#{version}/BeamerViewer-#{version}-macos.zip"
  name "Beamer Viewer"
  desc "Native macOS PDF presenter console for Beamer slides"
  homepage "https://github.com/quanghm/beamer-viewer"

  depends_on macos: ">= :sonoma"

  app "BeamerViewer.app"

  zap trash: [
    "~/Library/Caches/com.quanghm.beamer-viewer",
    "~/Library/Preferences/com.quanghm.beamer-viewer.plist",
  ]
end
