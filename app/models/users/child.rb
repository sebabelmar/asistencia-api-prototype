class Child < User
  belongs_to :school

  has_many :attendances
end
