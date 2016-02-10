ruby-systemd
=======================

Provides a basic library to interact with Systemd via the DBUS api.




Example Usage of library  
```
systemd = Systemd::new
systemd.getUnits.each do |a|
  puts a.name
end
puts systemd.getUnit("cups.service").human_name
```
