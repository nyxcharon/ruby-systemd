require "dbus"
require_relative 'systemd/Unit'

class Systemd
  def initialize
    dbus = DBus::SystemBus.instance
    systemd_service = dbus.service("org.freedesktop.systemd1")
    @systemd_object = systemd_service.object("/org/freedesktop/systemd1")
    @systemd_object.introspect
    @units = Hash.new
    self.refreshUnits
  end

  def getUnits
    @units.values
  end

  def getUnit(unitName)
    @units[unitName]
  end

  def refreshUnits
    @units.clear
    unitList = @systemd_object.ListUnits()
    unitList[0].each do |unit|
      currentUnit = Unit.new(unit)
      @units[currentUnit.name] = currentUnit
    end
  end
end
