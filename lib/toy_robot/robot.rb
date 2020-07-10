# frozen_string_literal: true

module ToyRobot
  # lib/toy_robot/robot.rb
  class Robot
    def initialize(table = [5, 5])
      @table = table
    end

    def place(position)
      raise OutOfLimits.new if outside_limits?(position)

      @position = position
      @placed = true
    end

    def report
      @position.to_s
    end

    def move
      raise NeedToBeInPlace unless @placed

      future_move = @position.forward
      if outside_limits?(future_move)
        raise OutOfLimits.new
      end

      @position = future_move
    end

    def left
      raise NeedToBeInPlace.new unless @placed
      @position = @position.left
    end

    def right
      raise NeedToBeInPlace.new unless @placed
      @position = @position.right
    end

    private

    def outside_limits?(position)
      (position.x.negative? || position.y.negative?) ||
        (position.x >= @table[0] || position.y >= @table[1])
    end
  end
end
