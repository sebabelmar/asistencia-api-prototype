# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


school = School.create(
  name: 'School_1',
  address: '123 Somewhere St.'
)

teacher = User.create( name: "Teacher", email: "t@t.com", password: "123", password_confirmation: "123", school_id: school.id, type: 'Teacher' )

10.times do |i|
  child = Child.create(
    name: "Name",
    email: "c_#{i}@c.com",
    password: "123",
    password_confirmation: "123",
    school_id: school.id
  )

  Attendance.create(
    datetime: DateTime.current,
    status: true,
    child_id: child.id,
    teacher_id: teacher.id
  )
end
