# frozen_string_literal: true

require 'toy_robot/version'
require 'toy_robot/robot'
require 'toy_robot/directions/all'
require 'toy_robot/directions'
require 'toy_robot/position'
require 'toy_robot/coordinate'

module ToyRobot
  class Error < StandardError; end
  class NeedToBeInPlace < StandardError; end
  class OutOfLimits < StandardError; end
  # Your code goes here...
end
