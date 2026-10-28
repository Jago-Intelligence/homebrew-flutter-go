class FlutterGo < Formula
  desc "Run and hot reload Flutter apps on a real phone without building them"
  homepage "https://pub-8e7a72f4641f4f3691a843f412d19af4.r2.dev"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://pub-8e7a72f4641f4f3691a843f412d19af4.r2.dev/cli/releases/4bfd84db2508/flutter-go-macos-arm64"
      sha256 "4bfd84db25081b1baa7582aa2338f404b8fceaeada6beede1b0216317f511fb0"
    end
  end

  def install
    bin.install Dir["flutter-go-*"].first => "flutter-go"
  end

  def caveats
    <<~EOS
      Install the runner SDK for this computer:
        flutter-go sdk install
    EOS
  end

  test do
    assert_match "flutter-go", shell_output("#{bin}/flutter-go --version")
  end
end
