json.set! :comments do
  json.array! @comments do |comment|
    json.extract! comment, :id, :body, :created_at, :updated_at
  end
end

