# frozen_string_literal: true

module ToyRobot
  module Command
    class Right
      def recognize?(command_string)
        command_string == 'RIGHT'
      end

      def perform(robot)
        robot.right
      end
    end
  end
end
