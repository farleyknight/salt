module Salt
  class Package
    def initialize(package)
      puts package
    end

    def install
      puts "Installing..."
    end

    def remove
      puts "Removing..."
    end

    def self.all
      puts "All packages:"
    end
  end
end