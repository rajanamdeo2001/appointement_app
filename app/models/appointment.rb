class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validate :no_conflicts

  private

  def no_conflicts
    if doctor && appointment_datetime
      existing_appointments = doctor.appointments.where.not(id: id)
      if existing_appointments.exists?(appointment_datetime: appointment_datetime)
        errors.add(:appointment_datetime, "conflicts with exixting appointment")
      end
    end
  end
end
