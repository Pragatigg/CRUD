class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string  :name,    null: false
      t.string  :class,   null: false
      t.integer :age,     null: false
      t.text    :hobbies
      t.float   :percentage
      t.string  :blood_group 
      t.timestamps
    end
  end
end
