# frozen_string_literal: true

module ToyRobot
  module Command
    # toy_robot/command/move.rb
    class Move
      def recognize?(command_string)
        command_string == 'MOVE'
      end

      def perform(robot)
        robot.move
      end
    end
  end
end
