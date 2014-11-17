# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ixintui/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Shawn Yu"]
  gem.email         = ["yu.chaong@gmail.com"]
  gem.description   = gem.summary = "ixintui(www.ixintui.com) push service"
  gem.homepage      = "https://github.com/baozoumanhua/ixintui"
  gem.license       = "LGPL-3.0"
  gem.files         = Dir['lib/*.rb']
  gem.name          = "ixintui"
  gem.require_paths = ["lib"]
  gem.version       = Ixintui::VERSION
  gem.add_runtime_dependency 'rest-client'
end