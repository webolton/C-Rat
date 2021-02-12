# frozen_string_literal: true

require 'dotenv/load'

module CRat
  ENVIRONMENT = ENV['CRAT_ENV'] ||= 'development'
end
