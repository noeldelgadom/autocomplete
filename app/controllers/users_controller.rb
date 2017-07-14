class UsersController < ApplicationController
  def index
    if params[:term]
      @users = User.search_by_full_name(params[:term]).with_pg_search_highlight
    else
      @users = User.all
    end
  end
end
