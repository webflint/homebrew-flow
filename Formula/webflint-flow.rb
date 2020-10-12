require 'formula'
class WebflintFlow < Formula
  homepage 'https://github.com/webflint/homebrew-flow'
  version '0.0.5'
  url 'https://github.com/webflint/homebrew-flow/raw/master/dist/flow-0.0.5.tar.gz'
  sha256 '9ea3fa59c02888d5e61a162daa8c4f47af23ebb91b6162e1a226f03ab9c5cd68'
  depends_on 'jq'
  def install
    bin.install 'bin/flow'
    lib.install Dir['lib/*']
    libexec.install Dir['libexec/*']
    bash_completion.install 'etc/bash_completion.d/flow_completion.bash'
    zsh_completion.install 'etc/autocomplete.zsh'
  end
end
