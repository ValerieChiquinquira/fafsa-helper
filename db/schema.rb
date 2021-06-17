
ActiveRecord::Schema.define(version: 2021_06_17_015212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fafsa_apps", force: :cascade do |t|
    t.string "drivers_license"
    t.string "drivers_license_st"
    t.string "drivers_license_num"
    t.string "citizen"
    t.string "alien_num"
    t.string "conviction"
    t.string "parent_edu"
    t.string "parent_edu2"
    t.string "receive_aid"
    t.string "application_year"
    t.string "current_grade"
    t.string "bachelors"
    t.string "degree_applied"
    t.string "high_school"
    t.string "work_study"
    t.string "foster_care"
    t.string "high_school_name"
    t.string "high_school_city"
    t.string "high_school_state"
    t.string "housing_plans"
    t.string "married"
    t.string "dep"
    t.string "kids"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false

    t.index ["user_id"], name: "index_fafsa_apps_on_user_id"
  end

 

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "sex"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.date "dob"
    t.string "student"
    t.string "mid_init"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fafsa_apps", "users"
end
