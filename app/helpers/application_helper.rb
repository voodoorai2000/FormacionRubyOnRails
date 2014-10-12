module ApplicationHelper

  def registered?
    cookies[:registered].present?
  end
end
