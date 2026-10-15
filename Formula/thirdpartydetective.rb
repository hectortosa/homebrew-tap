class Thirdpartydetective < Formula
  desc "Turns SPDX SBOMs into third-party notices and license reports"
  homepage "https://github.com/hectortosa/ThirdPartyDetective"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hectortosa/ThirdPartyDetective/releases/download/v1.0.0/thirdpartydetective_1.0.0_osx-arm64.tar.gz"
      sha256 "c465d1b6051eb544696a8e7785e17a4476b66c6cab56379784affc21c68d9b54"
    end
    on_intel do
      url "https://github.com/hectortosa/ThirdPartyDetective/releases/download/v1.0.0/thirdpartydetective_1.0.0_osx-x64.tar.gz"
      sha256 "35eba644fe160ebab88595d11d10e046b3b9a1dbbf4ab8bea063ff0ea0e3f136"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hectortosa/ThirdPartyDetective/releases/download/v1.0.0/thirdpartydetective_1.0.0_linux-arm64.tar.gz"
      sha256 "3e1fe170d3921c146252b3cbc2685a539e6c3c80117f96e5cd14837bb2da4490"
    end
    on_intel do
      url "https://github.com/hectortosa/ThirdPartyDetective/releases/download/v1.0.0/thirdpartydetective_1.0.0_linux-x64.tar.gz"
      sha256 "0a0ec4d8d4725bd5375e28d51289cae09748affc7f6463b911f8d0fe2e97bb7c"
    end
  end

  def install
    bin.install "thirdpartydetective"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thirdpartydetective --version")
  end
end
