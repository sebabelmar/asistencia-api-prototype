class Attendance < ApplicationRecord

  belongs_to :child, :foreign_key=> :child_id
  belongs_to :teacher, :foreign_key=> :teacher_id
end
