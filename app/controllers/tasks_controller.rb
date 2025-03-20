# frozen_string_literal: true

class TasksController < ApplicationController
  respond_to :html, :xml, :json

  def index
    # @tasks = Task.all
    # respond_with(@tasks)
    tasks = Task.all
    render status: :ok, json: { tasks: }
  end
end
