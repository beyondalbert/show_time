class Job < ActiveRecord::Base
  def requirements
    self.desc.split(';')
  end
end
