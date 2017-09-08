json.extract! post, :id, :name, :org, :body, :created_at, :updated_at, :val
json.url post_url(post, format: :json)
