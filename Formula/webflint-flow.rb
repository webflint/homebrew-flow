require 'formula'
class WebflintFlow < Formula
  homepage 'https://github.com/webflint/homebrew-flow'
  version '0.1.0'
  url 'https://github.com/webflint/homebrew-flow/raw/master/dist/flow-0.1.0.tar.gz'
  sha256 '9d944a91518273857c807072862445eb61e8fe71a5e2b6b29f6ba3071971b543'
  depends_on 'jq'
  def install
    bin.install 'bin/flow'
    lib.install Dir['lib/*']
    libexec.install Dir['libexec/*']
    bash_completion.install 'etc/bash_completion.d/flow_completion.bash'
    zsh_completion.install 'etc/autocomplete.zsh'
  end
end
