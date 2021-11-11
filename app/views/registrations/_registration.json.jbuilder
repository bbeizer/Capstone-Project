json.extract! registration, :id, :user, :course, :created_at, :updated_at
json.url registration_url(registration, format: :json)
