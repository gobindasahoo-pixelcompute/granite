# frozen_string_literal: true

# json.task do
#   json.id @task.id
#   json.slug @task.slug
#   json.title @task.title

#   json.assigned_user do # this is to create nested json object
#     json.id @task.assigned_user.id
#     json.name @task.assigned_user.name
#   end
# end
# since the key is same as task's key we can use extract

json.task do
  json.extract! @task,
    :id,
    :slug,
    :title

  json.assigned_user do
    json.extract! @task.assigned_user,
      :id,
      :name
  end
end
