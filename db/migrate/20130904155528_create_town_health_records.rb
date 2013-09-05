class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town_name
      t.integer :population_over_age_65
      t.integer :population_under_19
      t.integer :per_capita_income
      t.float :percentage_teen_births
      t.integer :infant_mortalities
      t.timestamps
    end
  end
end
