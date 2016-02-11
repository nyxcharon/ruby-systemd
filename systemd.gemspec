Gem::Specification.new do |s|
  s.name        = 'systemd'
  s.version     = '0.0.1'
  s.date        = '2016-02-11'
  s.summary     = "Ruby bindings for systemd"
  s.description = "Ruby bindings for systemd via DBUS api calls"
  s.authors     = ["Bobby Martin"]
  s.email       = 'nyxcharon@gmail.com'
  s.files       = Dir.glob('{lib}/**/*')
  s.homepage    =
    'http://github.com/nyxcharon/ruby-systemd'
  s.license       = 'MIT'
end
