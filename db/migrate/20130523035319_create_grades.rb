class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.float :score
      t.references :student
      t.references :assignment

      t.timestamps
    end
  end
end
