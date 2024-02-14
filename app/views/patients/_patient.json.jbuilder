json.extract! patient, :id, :name, :email, :age, :created_at, :updated_at
json.url patient_url(patient, format: :json)
