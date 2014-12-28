class CreateCoursesAndRequirements < ActiveRecord::Migration
  def change
  	
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.text :description

      t.timestamps
    end

		create_table :requirements do |t|
      t.column :course_id, :integer
      t.column :prerequisite_id, :integer

      t.timestamps
    end

  end
end
