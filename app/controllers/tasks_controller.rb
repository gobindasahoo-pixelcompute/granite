# frozen_string_literal: true

class TasksController < ApplicationController
  # respond_to :html, :xml, :json

  def index
    # @tasks = Task.all
    # respond_with(@tasks)
    tasks = Task.all
    render status: :ok, json: { tasks: }
  end

  def create
    task = Task.new(task_params)
    task.save!
    render_notice(t("successfully_created"))
  end

  def show
    task = Task.find_by!(slug: params[:slug])
    render_json({ task: task })
  end

  private

    def task_params
      params.require(:task).permit(:title)
    end
end
