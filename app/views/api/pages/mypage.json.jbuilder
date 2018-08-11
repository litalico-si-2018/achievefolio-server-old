json.set! :user do
  json.id @user.id
  json.name @user.name
  json.role @user.role
  json.set! :drops do
    json.array! @drops do |drop|
      json.count 3
      json.year drop.year
      json.month drop.month
      json.date drop.date
      json.is_new true
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

