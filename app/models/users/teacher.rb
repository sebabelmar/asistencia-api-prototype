class Teacher < User
  belongs_to :school

  has_many :attendances
end
