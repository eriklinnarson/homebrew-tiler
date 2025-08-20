cask "tiler" do
    version "0.2.0"
    sha256 "d6b347b74eef19a1911f7eba5c07aa1702ece2fa0b998dd3486c78066eb8a49e"

    url "https://github.com/eriklinnarson/Tiler/releases/download/v#{version}/Tiler.zip"
    name "Tiler"
    desc "A macOS window management app for moving and resizing windows using keyboard shortcuts."
    homepage "https://github.com/eriklinnarson/Tiler"

    depends_on macos: ">= :sonoma"

    preflight do
        require "os"
        min_version = MacOSVersion.new("14.6")
        raise "Tiler requires macOS 14.6 or later" if MacOS.version < min_version
    end

    app "Tiler.app"
end
