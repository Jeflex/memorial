class WelcomeController < ApplicationController
  include SessionHelper
  def index
    @approvedPosts=Post.where(:val=>true)
  end
end
