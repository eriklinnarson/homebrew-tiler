cask "tiler" do
    version "0.1.0"
    sha256 "0b86bfcb2057e5ac2037a8689cbab47d81ed710ee016a88998bfdffdc7895ca6"

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
