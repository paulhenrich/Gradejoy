module GradesHelper

  def new_grade_route(course_id, student_id, assignment_id)
    "#{course_id}/grades/#{assignment_id}/#{student_id}/new"
  end

  def edit_grade_route(course_id, student_id, assignment_id)
    "#{course_id}/grades/#{assignment_id}/#{student_id}/edit"
  end
end
