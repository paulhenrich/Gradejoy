module CoursesHelper
  def new_enroll_student_route(course_id)
    "/courses/#{course_id}/enroll_student/new"
  end

  def new_course_assignment_route(course_id)
    "/courses/#{course_id}/course_assignment/new"
  end
end
