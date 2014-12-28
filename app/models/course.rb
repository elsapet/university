class Course < ActiveRecord::Base

  has_many :requirements
  has_many :prerequisites, through: :requirements

end
