# frozen_string_literal: true

require 'config'
require 'pry'
require_relative 'environment'

module CRat
  class Configuration
    attr_accessor :aws_access_key_id, :aws_secret_access_key

    def initialize
      self.class.load_settings
      @aws_access_key_id = Settings.aws.access_key_id
      @aws_secret_access_key = Settings.aws.secret_access_key
    end

    def self.load_settings
      gem_root = Gem::Specification.find_by_name('CRat').gem_dir
      settings_path = File.expand_path(File.join(gem_root, 'config', 'settings'))
      settings_files = Config.setting_files(settings_path, CRat::ENVIRONMENT)
      Config.load_and_set_settings(settings_files)
    end
  end
end
