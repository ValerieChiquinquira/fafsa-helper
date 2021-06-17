json.extract! fafsa_app, :id, :drivers_license, :drivers_license_st, :drivers_license_num, :citizen, :alien_num, :conviction, :parent_edu, :parent_edu2, :receive_aid, :application_year, :current_grade, :bachelors, :degree_applied, :created_at, :updated_at
json.url fafsa_app_url(fafsa_app, format: :json)
