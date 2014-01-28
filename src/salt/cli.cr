require "option_parser"

module Salt
  class CLI
    def initialize(@arguments : Array(String))
      parse
    end

    def parse
      OptionParser.parse(@arguments) do |op|
        op.banner =
"Usage: salt command [arguments]

Salt is a decentralized package manager for Crystal.
It uses GitHub repos as a package source.

Usage:"
        op.on("--install user/package:version", "Installs the package") do |package|
          Package.new(package).install
        end

        op.on("--remove  user/package:version", "Removes the package") do |package|
          Package.new(package).remove
        end

        op.on("-l", "--list", "Lists all currently installed packages") { Package.all }
        op.on("-v", "--version", "Print Salt's version") { puts Salt::VERSION; exit }
        op.on("-h", "--help", "Print this message") { puts op; exit }
      end
    end
  end
end