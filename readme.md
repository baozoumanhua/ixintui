## 爱心推送 Ruby SDK


### Step 1

Add ixintui to your gemfile

```
gem 'ixintui', '~> 1.0.3'
```

### Step 2

Add ixintui config file to config/initializers

```
# config/initializers/ixintui.rb
# -*- encoding : utf-8 -*-
Ixintui.configure_keys do |config|
  config.ios_key YOUR_IOS_APP_KEY, YOUR_IOS_SECRET_KEY
  config.android_key YOUR_ANDROID_APP_KEY, YOUR_ANDROID_SECRET_KEY
end
```

### Push messages
```
Ixintui::IosService.push message: 'test'
Ixintui::AndroidService.push message: 'test'
```

Read [Document](http://www.ixintui.com/ddoc/doclist.php?f=3) for more information
