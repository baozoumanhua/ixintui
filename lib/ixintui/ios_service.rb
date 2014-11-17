module Ixintui
  class IosService < Service
    def self.server
      'http://iosmis.ixintui.com:8200/push'
    end

    def self.app_key
      Ixintui.options[:ios_app_key]
    end

    def self.app_secret_key
      Ixintui.options[:ios_secret_key]
    end
  end
end