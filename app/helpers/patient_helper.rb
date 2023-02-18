module PatientHelper
  def fullname(patient)
    "#{patient.first_name} #{patient.last_name}"
  end
end
