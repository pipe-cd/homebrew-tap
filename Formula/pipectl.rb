# typed: false
# frozen_string_literal: true

class Pipectl < Formula
    desc "pipectl: A Command Line Tool for PipeCD."
    homepage "https://github.com/pipe-cd/pipecd"
    version "0.47.0"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/pipe-cd/pipecd/releases/download/v0.47.0/pipectl_v0.47.0_darwin_amd64"
            sha256 "922a7e4cd4e3c79e4ce9c16bfbe7849493691cf0b8a4be6874c3c3bb341efabc"

            def install
                bin.install "pipectl_v0.47.0_darwin_amd64" => "pipectl"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/pipe-cd/pipecd/releases/download/v0.47.0/pipectl_v0.47.0_darwin_arm64"
            sha256 "b3c3efcd4b4b1a611e320ebd7613705f919ae793167f8f40a22826431b9d6c5f"

            def install
                bin.install "pipectl_v0.47.0_darwin_arm64" => "pipectl"
            end
        end
    end

    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/pipe-cd/pipecd/releases/download/v0.47.0/pipectl_v0.47.0_linux_arm64"
            sha256 "cca096cfff8ea95a908eb69f1bf6e7abbabb7cb0d3de4e5763f0b438c8a34a95"

            def install
                bin.install "pipectl_v0.47.0_linux_arm64" => "pipectl"
            end
        end
        if Hardware::CPU.intel?
            url "https://github.com/pipe-cd/pipecd/releases/download/v0.47.0/pipectl_v0.47.0_linux_amd64"
            sha256 "58bd709010df521f378d8290f3317424472bb6494d7748b1bb4740fea5db4d7f"

            def install
                bin.install "pipectl_v0.47.0_linux_amd64" => "pipectl"
            end
        end
    end

    test do
        system "#{bin}/pipectl --help"
    end
end
