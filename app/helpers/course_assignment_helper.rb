module CourseAssignmentHelper
  def new_course_assignment_route(course_id)
    "/courses/#{course_id}/course_assignment/new"
  end

  def course_assignment_show_route(course_id)
    "/courses/#{course_id}/course_assignment/show"
  end
end
