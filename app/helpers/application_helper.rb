module ApplicationHelper
  def handle_not_set(value)
    return "Not Set" if value.blank?
    value
  end
end
