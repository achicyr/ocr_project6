class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:add_activity, :unsubscribe]

  # GET /add_activity_to_account
  def add_activity
    @act_to_add = Activity.find_by_id(params[:activity_id])
    current_user.activities.each do |a|
      if a == @act_to_add
        @act_to_add = nil
      end
    end
    current_user.activities << @act_to_add
    #redirect_to Activity.all, notice: 'Congratulation '+current_user.email[(current_user.email.index('.')-1)+1..(current_user.email.index('@')-1)]+", you've just added activity '#{@act_to_add}' to your activities list !"
    render :index, location: @activity
  end
  # GET /activities.json
  def ok
    @test = "je suis un test"
  end
  # GET /activities.json
  def index
    @activities = Activity.all
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

  # POST /activities/1
  # POST /activities/1.json
  def unsubscribe
    puts"\n\n\n#{params} --- \n\n\n"
    current_user.activities.destroy(params[:id])
    redirect_to Activity
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
      params.fetch(:activity, {}).permit(:name, :description)
    end
end
