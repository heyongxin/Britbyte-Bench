$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rubby'

module Helpers
  def disabled(message=nil, &block)
    pending message ? "disabled #{message}" : "disabled examples"
  end
end

RSpec.configure do |c|
  c.extend Helpers
end
