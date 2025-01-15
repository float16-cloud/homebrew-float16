class Cli < Formula
  desc "A simple CLI tool for float16"
  homepage "https://github.com/float16-cloud/homebrew-float16"
  url "https://registry.npmjs.org/@float16/cli/-/cli-0.0.3-beta.1.tgz"
  version "0.0.3-beta.1"

  depends_on "node"
  # uncomment if there is a native addon inside the dependency tree
  # depends_on "python" => :build

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here, version isn't usually meaningful
    assert_match version.to_s, shell_output("#{bin}/float16 --version")
  end
end
