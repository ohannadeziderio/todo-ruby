module Api
    module V1
        class TasksController < ApplicationController
        
            # List all tasks
            def index
                tasks = Task.order('day ASC');
                render json: {status: 'SUCCESS', message: 'Tasks loaded', data: tasks}, status: :ok
            end
            
            # List task
            def show
                task = Task.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Task loaded', data: task}, status: :ok
            end
            
            # Create a task
            def create
                task = Task.new(task_params)
                
                if task.save
                    render json: {status: 'SUCCESS', message: 'Added task', data: task}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Task not added', data: task.erros}, status: :unprocessable_entity
                end
            end
            
            # Params accepted
            def task_params
                params.permit(:title, :description, :day)
            end
        end
    end
end