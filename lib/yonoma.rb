# frozen_string_literal: true

require_relative "yonoma/version"
require_relative "yonoma/client"
require_relative "yonoma/contacts"
require_relative "yonoma/lists"
require_relative "yonoma/tags"
require_relative "yonoma/mail"

module Yonoma
  class Error < StandardError; end
  # Your code goes here...
  class << self
    attr_accessor :api_key

    def configure(api_key)
      @api_key = api_key
    end
  end
end