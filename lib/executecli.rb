require_relative 'errors'
require_relative 'configuration'

class ExecuteCli
  attr_reader :params
  private :params

  def method_missing(method_sym, *arguments, &block)
    if method_sym.to_s =~ /^check_(.*)$/
      return
    else
      super
    end
  end

  def initialize(list)
    @params = list.each { |k,v| send("check_#{k}", v)}
  end

  def check_string_param value
    log.debug "#{__method__.to_s}  >>> value=#{value}"
    raise BadInputParam, "valid values for #{__method__.to_s.gsub 'check_', ''} are {a|b|c}" unless %w(a b c).include? value
  end

  def process
    log.info "Process: #{params}"
  end

end
