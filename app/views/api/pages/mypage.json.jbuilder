json.set! :user do
  json.id @user.id
  json.name @user.name
  json.role @user.role
  json.set! :drops do
    json.array! @comments do |comment|
      json.id @user.id
      json.count @user.id
    end
  end
end
# json.set! :achievements do
#   json.array! @comments do |comment|
#     json.extract! comment, :id, :body, :created_at, :updated_at
#   end
# end
# json.set! :posts do
#   json.array! @comments do |comment|
#     json.extract! comment, :id, :body, :created_at, :updated_at
#   end
# end

