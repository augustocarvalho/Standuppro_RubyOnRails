json.extract! athlete, :id, :name, :dob, :email, :estado, :cidade, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
