# frozen_string_literal: true

module ToyRobot
  module Command
    # toy_robot/command/left.rb
    class Left
      def recognize?(command_string)
        command_string == 'LEFT'
      end

      def perform(robot)
        robot.left
      end
    end
  end
end
