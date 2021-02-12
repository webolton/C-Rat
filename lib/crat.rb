# frozen_string_literal: true

require 'bundler/setup'
require_relative 'crat/configuration'
require_relative 'crat/environment'

# loads the correct gem enironment
Bundler.require(:default, CRat::ENVIRONMENT)

module CRat
  class Error < StandardError; end
  class << self
    def config
      @config ||= Configuration.new
    end
  end
end
