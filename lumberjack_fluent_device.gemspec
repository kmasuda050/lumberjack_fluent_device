# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'lumberjack_fluent_device'
  s.version = File.read(File.expand_path("../VERSION", __FILE__)).strip
  s.summary = "A logging device for the lumberjack gem that writes log entries to fluentd."
  s.description = "A logging device for the lumberjack gem that writes log entries to fluentd."

  s.authors = ["matsuko"]
  s.email = ['matsuko@mononoco.com']
  s.homepage = "http://github.com/matsuko/lumberjack_fluent_device"

  s.files = ['README.rdoc', 'VERSION', 'Rakefile', 'MIT_LICENSE'] +  Dir.glob('lib/**/*'), Dir.glob('spec/**/*')
  s.require_path = 'lib'

  s.has_rdoc = true
  s.rdoc_options = ["--charset=UTF-8", "--main", "README.rdoc"]
  s.extra_rdoc_files = ["README.rdoc"]

  s.add_dependency "fluent-logger"
  s.add_dependency "lumberjack", "~>1.0"
end
