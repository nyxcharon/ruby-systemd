ruby-systemd
=======================

Provides a basic library to interact with Systemd service units.  
Based on the [Systemd DBUS API](https://www.freedesktop.org/wiki/Software/systemd/dbus/)
### NOTE: This is not feature complete. Progress can be tracked via issues.

Install
---
```
gem install systemd-bindings
```


Example Usage of library  
```

systemd = Systemd::SystemdManager::new

#List all units
systemd.units.each do |a|
  puts a.name
end

#Retrive a specific unit and get it's human readable name
puts systemd.get_unit("cups.service").human_name
```
