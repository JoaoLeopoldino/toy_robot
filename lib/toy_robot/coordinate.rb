# frozen_string_literal: true

module ToyRobot
  # lib/toy_robot/coordinate.rb
  class Coordinate
    attr_reader :x, :y
    def initialize(x, y)
      @x = x
      @y = y
    end

    def to_s
      "#{@x},#{@y}"
    end
  end
end
