# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create!([{name: 'Harry Potter', house: 'Gryffindor'},
                {name: 'Ron Weasley', house: 'Gryffindor'},
                {name: 'Hermione Granger', house: 'Gryffindor'},
                {name: 'Ginny Weasley', house: 'Gryffindor'},
                {name: 'Cho Chang', house: 'Ravenclaw'},
                {name: 'Luna Lovegood', house: 'Ravenclaw'},
                {name: 'Gilderoy Lockheart', house: 'Ravenclaw'},
                {name: 'Penelope Clearwater', house: 'Ravenclaw'},
                {name: 'Cedric Diggory', house: 'Hufflepuff'},
                {name: 'Ernie Macmillan', house: 'Hufflepuff'},
                {name: 'Hannah Abbott', house: 'Hufflepuff'},
                {name: 'Justin Finch-Fletchley', house: 'Hufflepuff'},
                {name: 'Draco Malfoy', house: 'Slytherin'},
                {name: 'Vincent Crabbe', house: 'Slytherin'},
                {name: 'Gregory Goyle', house: 'Slytherin'},
                {name: 'Millicent Bulstrode', house: 'Slytherin'},
                ])

puts "#{Student.count} Students Created!"

Teacher.create!([{name: 'McGonagall'},
                {name: 'Flitwick'},
                {name: 'Snape'},
                {name: 'Trelawney'},
                {name: 'Sprout'},
                {name: 'Hooch'},
                {name: 'Burbage'},
                ])

puts "#{Teacher.count} Teachers Created!"

Subject.create!([{name: 'Herbology', room_number: 12, teacher_id: 5},
                {name: 'Transfiguration', room_number: 1, teacher_id: 1},
                {name: 'Charms', room_number: 2, teacher_id: 2},
                {name: 'Flying', room_number: 12, teacher_id: 6},
                {name: 'Potions', room_number: 0, teacher_id: 3},
                {name: 'Muggle Studies', room_number: 8, teacher_id: 7},
                {name: 'Divination', room_number: 11, teacher_id: 4},
                {name: 'Care of Magical Creatures', room_number: 12, teacher_id: 5},
                {name: 'Defense Against the Dark Arts', room_number: 1, teacher_id: 3},
                {name: 'Astronomy', room_number: 11, teacher_id: 4},
                ])

puts "#{Subject.count} Subjects Created!"

Enrollment.create!([{student_id: 1, subject_id: 9, grade: 91},
                  {student_id: 1, subject_id: 2, grade: 84},
                  {student_id: 2, subject_id: 3, grade: 80},
                  {student_id: 2, subject_id: 5, grade: 71},
                  {student_id: 3, subject_id: 1, grade: 97},
                  {student_id: 3, subject_id: 2, grade: 95},
                  {student_id: 3, subject_id: 5, grade: 94},
                  {student_id: 3, subject_id: 6, grade: 99},
                  {student_id: 4, subject_id: 1, grade: 92},
                  {student_id: 4, subject_id: 2, grade: 85},
                  {student_id: 5, subject_id: 3, grade: 95},
                  {student_id: 5, subject_id: 4, grade: 93},
                  {student_id: 6, subject_id: 5, grade: 92},
                  {student_id: 6, subject_id: 6, grade: 94},
                  {student_id: 7, subject_id: 7, grade: 70},
                  {student_id: 8, subject_id: 8, grade: 94},
                  {student_id: 8, subject_id: 9, grade: 90},
                  {student_id: 8, subject_id: 10, grade: 98},
                  {student_id: 9, subject_id: 10, grade: 93},
                  {student_id: 9, subject_id: 9, grade: 94},
                  {student_id: 10, subject_id: 8, grade: 85},
                  {student_id: 10, subject_id: 7, grade: 75},
                  {student_id: 11, subject_id: 6, grade: 80},
                  {student_id: 11, subject_id: 5, grade: 82},
                  {student_id: 12, subject_id: 4, grade: 82},
                  {student_id: 12, subject_id: 3, grade: 79},
                  {student_id: 13, subject_id: 2, grade: 88},
                  {student_id: 13, subject_id: 1, grade: 90},
                  {student_id: 14, subject_id: 1, grade: 82},
                  {student_id: 14, subject_id: 2, grade: 85},
                  {student_id: 14, subject_id: 3, grade: 80},
                  {student_id: 15, subject_id: 4, grade: 70},
                  {student_id: 15, subject_id: 5, grade: 72},
                  {student_id: 15, subject_id: 6, grade: 65},
                  {student_id: 16, subject_id: 7, grade: 90},
                  {student_id: 16, subject_id: 8, grade: 92},
                  ])

puts "#{Enrollment.count} Enrollments Created!"
