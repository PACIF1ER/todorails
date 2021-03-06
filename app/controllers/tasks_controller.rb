class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  # GET /tasks
  # GET /tasks.json
  def index
   @tasks = current_user.tasks.order(sort_column + ' ' + sort_direction).where(completed: nil) 

    @tasks_completed = current_user.tasks.order(sort_column + ' ' + sort_direction).where(completed: true)
  end
  # GET /tasks/1
  # GET /tasks/1.json
  def show
   @task = current_user.tasks.find params[:id] 

  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = current_user.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_path, notice: 'Task was successfully created.' }
        format.json {render inline: "location.reload();" }
        format.json { render :show, status: :created, location: tasks_path }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to tasks_path, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: tasks_path }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def destroy_multiple 
      @tasks = current_user.tasks.where(id: params[:tasks_id]).destroy_all 
      redirect_to tasks_path
    end

   def complete
    @task = Task.find(params[:id])
    @task.update_attributes(completed: true) 
          respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was Completed.' }
      format.json { head :no_content } 
      end 
   end

   def uncomplete
    @task = Task.find(params[:id])
    @task.update_attributes(completed: nil) 
          respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was Uncompleted.' }
      format.json { head :no_content } 
      end 
   end

  def sort_column
    Task.column_names.include?(params[:sort]) ? params[:sort] : "name"
    Task.column_names.include?(params[:sort]) ? params[:sort] : "priority"
    Task.column_names.include?(params[:sort]) ? params[:sort] : "duedate"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :priority, :duedate, :completed,  :description, :status)
    end
end
