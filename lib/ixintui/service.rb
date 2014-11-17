module Ixintui
  class Service
    def self.server
    end

    def self.app_key
    end

    def self.app_secret_key
    end

    def self.base_data
      {
        appkey: app_key,
        is_notif: 1,
        click_action: 'open_app',
        open_app: true
      }
    end

    def self.sign(params)
      data = Hash[params.sort]
      string = data.to_json
      string += app_secret_key
      Digest::MD5.hexdigest(string)
    end

    def self.validates(params)
      case params[:click_action]
      when 'open_app', 'open_url', 'intent'
        raise ArgumentError, "设置了 click_action 参数为 '#{params[:click_action]}' 但是没有设置 #{params[:click_action]} 参数" if params[params[:click_action].to_sym].blank?
      else
        raise ArgumentError, "click_action 参数可选值为：'open_app', 'open_url', 'intent'"
      end

      raise ArgumentError, "app_key 未设置" if params[:appkey].blank?
    end

    def self.push(options = {})
      params = base_data.merge(options)
      validates(params)
      params[:sign] = sign(params)

      puts params.inspect
      res = RestClient.post(server, params.to_json, :content_type => :json)
      res.body
    end
  end
end