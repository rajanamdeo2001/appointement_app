json.extract! appointment, :id, :doctor_id, :doctor_name, :patient_id, :appointment_datetime, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
