class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @expenses = Expense.paginate(:page => params[:page], :per_page => 5)
    
    respond_with(@expenses)
  end

  def show
    respond_with(@expense)
  end

  def new
    @expense = Expense.new
    respond_with(@expense)
  end

  def edit
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.save
    respond_with(@expense)
  end

  def update
    @expense.update(expense_params)
    respond_with(@expense)
  end

  def destroy
    @expense.destroy
    respond_with(@expense)
  end

  private
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def expense_params
      params.require(:expense).permit(:product_name, :date, :amount, :user_id)
    end
end
