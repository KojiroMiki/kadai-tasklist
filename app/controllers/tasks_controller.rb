class TasksController < ApplicationController
  def index
    @tasks = Task.all
<<<<<<< HEAD
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

=======
  end 
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
>>>>>>> origin/master
  def create
    @task = Task.new(task_params)
    
    if @task.save
<<<<<<< HEAD
      flash[:success] = "Task が正常に投稿されました"
      redirect_to @task
    else
      flash.now[:danger] = "Task が正常に投稿されませんでした" 
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      flash[:success] = 'Task は正常に更新されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Task は更新されませんでした'
      render :edit
    end
  end

  def destroy
     @task = Task.find(params[:id])
    @task.destroy

    flash[:success] = 'Task は正常に削除されました'
=======
      flash[:success]= "Task が正常に投稿されました"
      redirect_to @task
    else 
      flash.now[:danger]= "Task が正常に投稿されませんでした"
      render :new
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    
    if @task.update(task_params)
      flash[:success] = "Task　は正常に更新されました"
      redirect_to @task
    else 
      flash.now[:danger]= "Taskは更新されませんでした"
      render :edit
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    
    flash[:success] = "Task は正常に削除されました"
>>>>>>> origin/master
    redirect_to task_url
  end
  
  private
<<<<<<< HEAD
  
  def task_params
    params.require(:task).permit(:content)
  end
end
=======

def task_params
  params.require(:task).permit(:content, :status)
end
end
>>>>>>> origin/master