json.array! @instructors, partial: "instructors/instructor", as: :instructor
json.array! @courses, partial: "courses/course", as: :course
json.array! @registrations, partial: "registrations/registration", as: :registration

