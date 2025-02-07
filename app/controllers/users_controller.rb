class UsersController <ApplicationController
  def index

    matching_users = User.all
    @users = matching_users.order({ :username => :asc })

    render ({ :template => "user_templates/index.html.erb"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.first
   
   
    render ({ :template => "user_templates/show.html.erb"})
   
  end

  def feed
    
  if session[:user_id] != nil
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.first
   
   
    render ({ :template => "user_templates/feed.html.erb"})
  else
    redirect_to("/", { :alert => "You're not authorized for that."})
  end
   
  end

end
