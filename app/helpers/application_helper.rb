module ApplicationHelper
  def login_helper(css_class)
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: css_class) +
      " ".html_safe +
      (link_to 'Login', new_user_session_path, class: css_class)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: css_class
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the layout #{layout_name}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_helper
    CanvasWangViewTool::Renderer.copyright("Canvas Corp", "All rights reserved")
  end
end
