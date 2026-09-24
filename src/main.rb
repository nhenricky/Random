require "random/formatter"

module SecureRandom
  VERSION = "0.4.1"

  class << self
    def bytes(n)
      raise ArgumentError, "n deve ser um inteiro positivo" unless n.is_a?(Integer) && n >= 0

      gen_random(n)
    end
  end

  extend Random::Formatter
end
