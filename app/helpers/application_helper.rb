module ApplicationHelper
	def login_helper
		if current_user.is_a?(GuestUser) 
            (link_to "Register", new_user_registration_path) +
            "<br>".html_safe +
            (link_to "Login", new_user_session_path )
        else
			link_to "Logout", destroy_user_session_path, method: :destroy 
        end 
    end

    def source_helper(layout_name)
        if session[:source] 
            greeting = "Thanks for visting me from #{session[:source]} and you are on #{layout_name} layout"
            content_tag(:p, greeting, class: "source-greeting")
        end
    end

    def copyright_generator
        KpiViewTool::Renderer.copyright 'Ajay kumar','All rights reserved'
    end
end
