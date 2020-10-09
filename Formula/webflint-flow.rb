require 'formula'
class WebflintFlow < Formula
  homepage 'https://github.com/webflint/homebrew-flow'
  version '0.0.4'
  url 'https://github.com/webflint/homebrew-flow/raw/master/dist/flow-0.0.4.tar.gz'
  sha256 '75f30a5257b417e01f46d2e146bafab11d0bd377b01ab0e6d82c9e692b7f6f79'
  depends_on 'jq'
  def install
    bin.install 'bin/flow'
    lib.install Dir['lib/*']
    libexec.install Dir['libexec/*']
    bash_completion.install 'etc/bash_completion.d/flow_completion.bash'
  end
end
