class AdminUsersController < ApplicationController
  def index
    @users = User.all

    @tasks_grid = initialize_grid(User,
      :order => 'updated_at',
      :order_direction => 'desc',
      :per_page => 20
    )
  end
end
