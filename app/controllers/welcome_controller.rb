class WelcomeController < ApplicationController
  include SessionHelper
  def index
    @approvedPosts=Post.where(:val=>true)
  end
  def admin
    if is_admin?
    end
  end
end
