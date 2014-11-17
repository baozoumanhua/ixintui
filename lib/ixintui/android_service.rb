module Ixintui
  class AndroidService < Service
    def self.server
      'http://androidmis.ixintui.com:8001/push'
    end

    def self.app_key
      Ixintui.options[:android_app_key]
    end

    def self.app_secret_key
      Ixintui.options[:android_secret_key]
    end

    def self.base_data
      super.merge({
        click_action: 'open_app',
        open_app: true
      })
    end
  end
end