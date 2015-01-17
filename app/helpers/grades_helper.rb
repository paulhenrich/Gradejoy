module GradesHelper

  def new_grade_route(course_id, student_id, assignment_id)
    "courses/#{course_id}/grades/#{assignment_id}/#{student_id}/new"
  end
end
