require 'active_support/all'

class IllegalParamError < StandardError; end

class Sample1
    attr_reader :name
    attr_reader :value

    def initialize(name: nil, value: nil)
        raise IllegalParamError.new 'パラメーターエラー' if name.nil? || value.nil?
        @name = name
        @value = value
    end

    def info
        "name:#{@name} value:#{@value}"
    end
end