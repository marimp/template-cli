require 'logger'

class Configuration

  CLI = 'cli'
  NAME = 'CLI_NAME'
  VERSION = '0.0.1'
  SUMMARY = 'CLI_SUMMARY'
  DESCRIPTION = 'CLI_DESCRIPTION'
  DATE = '2016-05-21'

  def self.logger
    @@logger
  end

  def self.init(opts)
    $stdout.sync = true
    @@logger = Logger.new $stdout
    if opts[:debug]
      @@logger.level = Logger::DEBUG
    else
      @@logger.level = Logger::INFO
      @@logger.formatter = proc do |_, datetime, _, msg|
        "#{datetime.strftime('%H:%M:%S')}  #{msg}\n"
      end
    end
  end

end
