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
        
        end
    end
end