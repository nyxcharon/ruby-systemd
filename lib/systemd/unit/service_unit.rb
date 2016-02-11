module Systemd
  # Systemd unit definitons
  module Unit
    # Object representation of a Systemd Service Unit object
    class ServiceUnit
      # Systemd mapping of properties to array index
      # see https://www.freedesktop.org/wiki/Software/systemd/dbus/
      # rubocop:disable Style/ClassVars
      @@indices = { name: 0, human_name: 1, load_state: 2,
                    active_state: 3, sub_state: 4, follower: 5, object_path: 6,
                    job_id: 7, job_type: 8, job_path: 9 }
      # rubocop:enable Style/ClassVars
      attr_accessor(*@@indices.keys)

      def initialize(unit_entry)
        @@indices.each { |key, value| send("#{key}=", unit_entry[value]) }
      end
    end
  end
end
