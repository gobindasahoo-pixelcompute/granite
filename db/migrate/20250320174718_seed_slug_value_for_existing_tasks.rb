# frozen_string_literal: true

class SeedSlugValueForExistingTasks < ActiveRecord::Migration[7.1]
  def up
    Task.find_each do |task|
      task.send(:set_slug)
      # calls the 'set_slug' method for each task. send is used to call a method dynamically on an object
      task.save!(validate: false)
      # saves the task without running validations.
    end
  end

  def down
    Task.find_each do |task|
      task.slug = nil # sets the slug field to nil for each task.
      task.save!(validate: false) # saves the task without running validations.
    end
  end
end
