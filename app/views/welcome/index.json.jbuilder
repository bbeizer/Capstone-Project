json.array! @instructors, partial: "instructors/instructor", as: :instructor
json.array! @courses, partial: "courses/course", as: :course
