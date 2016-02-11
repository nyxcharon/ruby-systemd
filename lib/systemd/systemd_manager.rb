require 'dbus'
require_relative 'unit/service_unit'
module Systemd
  # Main class to interact with systemd
  class SystemdManager
    def initialize
      dbus = DBus::SystemBus.instance
      systemd_service = dbus.service('org.freedesktop.systemd1')
      @systemd_object = systemd_service.object('/org/freedesktop/systemd1')
      @systemd_object.introspect
      @units = {}
      refresh_units
    end

    def units
      @units.values
    end

    def get_unit(unit_name)
      @units[unit_name]
    end

    def refresh_units
      @units.clear
      unit_list = @systemd_object.ListUnits()
      unit_list.first.each do |unit|
        current_unit = Systemd::Unit::ServiceUnit.new(unit)
        @units[current_unit.name] = current_unit
      end
    end
  end
end
