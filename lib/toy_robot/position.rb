# frozen_string_literal: true

require 'forwardable'
module ToyRobot
  # lib/toy_robot/coordinate.rb
  class Position
    extend Forwardable
    def_delegators :@coordinate, :x, :y
    def initialize(coordinate, direction)
      @coordinate = coordinate
      @direction = ToyRobot::Directions[direction.to_sym]
    end

    def forward
      Position.new @direction.forward(@coordinate), @direction
    end

    def left
      Position.new @coordinate, @direction.left
    end

    def right
      Position.new @coordinate, @direction.right
    end

    def to_s
      "#{@coordinate},#{@direction}"
    end
  end
end
