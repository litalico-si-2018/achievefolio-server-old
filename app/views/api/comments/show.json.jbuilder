json.set! :comment do
  json.extract! @comment, :id, :body, :created_at, :updated_at
end