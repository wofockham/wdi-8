module ApplicationHelper
  def nav_menu
    links = "<li>#{ link_to('Home', root_path) }</li>"

    if @current_user.present?

      if @current_user.is_admin?
        links += "<li>#{ link_to('All users', users_path)}</li>"
      end

      links += "<li>#{ link_to('Sign out ' + @current_user.name, login_path, :method => :delete) }</li>"
    else
      links += "<li>#{ link_to('Sign up', new_user_path) }</li><li>#{ link_to('Log in', login_path) }</li>"
    end

    links
  end
end
