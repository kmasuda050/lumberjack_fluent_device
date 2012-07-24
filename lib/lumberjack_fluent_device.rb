require "fluent-logger"
require "lumberjack"

module Lumberjack
  # Write Lumberjack log entries to fluentd.
  class FluentDevice < Device
    
    def initialize(tag)
      @tag = tag
      @logger = Fluent::Logger::FluentLogger.new(nil)
    end
    
    def write(entry)
      @logger.post(@tag, entry)
    end
    
    def close
      @logger.close
    end
  end
end
