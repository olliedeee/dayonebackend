class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  def index
    @goals = Goal.all
  end

 
  def show
  end

  def new
    @goal = Goal.new
  end

  def edit
  end

  def create
    @goal = Goal.new(goal_params)

    respond_to do |format|
      if @goal.save

        format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def follow_goal
    @goal = Goal.find(params[:id])
    if @goal.users.include?(current_user)
      redirect_to goals_path
       flash[:danger] = "You are already following this goal"
      else
        @goal.users << current_user        
      redirect_to goals_path
       flash[:success] = "Goal added"
    end
  end
  
  def unfollow_goal
    @goal = Goal.find(params[:id])
    @goal.users.delete(current_user)
    redirect_to goals_path
       flash[:success] = "Goal removed"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:name)
    end
end
