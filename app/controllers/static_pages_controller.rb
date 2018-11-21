class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def help
  end

  def about
    # render plain: "about text"
  end

  def contact
  end

  def sample
    # render layout: false
    render layout: 'sample'
    # render plain: "aaa"
  end
end
