module CoursesHelper
  def new_enroll_student_route(course_id)
    "/courses/#{course_id}/enroll_student/new"
  end
end
