class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:indexUser, :add_activity, :unsubscribe]

  # POST /add_activity_to_user
  def add_activity
    User.find_by_id(current_user[:id]).users_activities.create(users_activity_params)
    #redirect_to Activity.all, notice: 'Congratulation '+current_user.email[(current_user.email.index('.')-1)+1..(current_user.email.index('@')-1)]+", you've just added activity '#{@act_to_add}' to your activities list !"
    redirect_to({action: "indexUser"})
  end
  # GET /activities.json
  def index
    @activities = Activity.all
  end
  # GET /activities.json
  def indexUser
    @activity = UsersActivity.new
    @activities = Activity.all
    @newActivity = UsersActivity.new
  end
  # GET /edit/:id
  def editLog
    @u_activity = UsersActivity.find_by_id(params[:id])
  end
  # DELETE /edit/:id
  def deleteLog
    @u_activity = UsersActivity.find_by_id(params[:id]).destroy
    redirect_to user_activity_index_path
  end
  # POST /tt/:id
  def updateLog
    #User.first.users_activities.update(users_activity_params)
    #redirect_to :back
    UsersActivity.find_by_id(params["users_activity"]["activity_id"]).update(users_activity_params)
    redirect_to user_activity_index_path
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @activity = Activity.find_by_id(params[:id])
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Your activity entry was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_params
      params.fetch(:activity, {}).permit(:name, :description, :users_activities)
    end
    # Only allow a list of trusted parameters through.
    def users_activity_params
      params.fetch(:users_activity, {}).permit(:when, :howlong, :performances, :user_id, :activity_id)
    end
end
