# encoding: utf-8
require 'ixintui/version'
require 'ixintui/service'
require 'ixintui/ios_service'
require 'ixintui/android_service'

module Ixintui
  DEFAULTS = {
    ios_app_key: "",
    ios_secret_key: "",
    android_app_key: "",
    android_secret_key: ""
  }

  def self.options
    @options ||= DEFAULTS.dup
  end

  def self.configure_keys
    yield self
  end

  def self.ios_key(app_key, secret_key)
    self.options[:ios_app_key] = app_key
    self.options[:ios_secret_key] = secret_key
  end

  def self.android_key(app_key, secret_key)
    self.options[:android_app_key] = app_key
    self.options[:android_secret_key] = secret_key
  end
end