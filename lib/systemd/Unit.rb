class Unit
  # Systemd mapping of properties to array index
  # see https://www.freedesktop.org/wiki/Software/systemd/dbus/
  UNIT_NAME = 0
  UNIT_HUMAN_NAME = 1
  UNIT_LOAD_STATE = 2
  UNIT_ACTIVE_STATE = 3
  UNIT_SUB_STATE = 4
  UNIT_FOLLOWER = 5
  UNIT_OBJECT_PATH = 6
  UNIT_JOB_ID = 7
  UNIT_JOB_TYPE = 8
  UNIT_JOB_PATH = 9
  private_constant :UNIT_NAME,:UNIT_HUMAN_NAME,:UNIT_LOAD_STATE,:UNIT_ACTIVE_STATE,
     :UNIT_SUB_STATE,:UNIT_FOLLOWER,:UNIT_OBJECT_PATH,:UNIT_JOB_ID,
     :UNIT_JOB_TYPE,:UNIT_JOB_PATH

  def initialize(unit_entry)
    self.name = unit_entry[UNIT_NAME]
    self.human_name = unit_entry[UNIT_HUMAN_NAME]
    self.load_state = unit_entry[UNIT_LOAD_STATE]
    self.active_state = unit_entry[UNIT_ACTIVE_STATE]
    self.sub_state = unit_entry[UNIT_SUB_STATE]
    self.follower = unit_entry[UNIT_FOLLOWER]
    self.object_path = unit_entry[UNIT_OBJECT_PATH]
    self.job_id = unit_entry[UNIT_JOB_ID]
    self.job_type = unit_entry[UNIT_JOB_TYPE]
    self.job_path = unit_entry[UNIT_JOB_PATH]
  end
  attr_accessor :name,:human_name,:load_state,:active_state,:sub_state,:follower,
    :object_path,:job_id,:job_type,:job_path
end
