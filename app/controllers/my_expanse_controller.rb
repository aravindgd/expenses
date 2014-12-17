class MyExpanseController < ApplicationController
  def index
  	if user_signed_in?
  		@current_user_expenses = current_user.expenses
  	end
  end
end
