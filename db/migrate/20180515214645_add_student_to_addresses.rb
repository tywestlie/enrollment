class AddStudentToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :student, index: true, foreign_key: true
  end
end
