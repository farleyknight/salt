require "salt/**"

module Salt
  def self.new(arguments = ARGV)
    CLI.new(arguments)
  end
end