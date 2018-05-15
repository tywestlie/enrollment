require 'rails_helper'

describe 'a user visits student index page ' do
  it 'can delete a student' do
    student1 = Student.create(name: 'Tom')
    student2 = Student.create(name: 'Ashley')

    visit students_path

    within(".student_#{student1.id}") do
      click_on 'Delete'
    end

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student1.name)
  end
end
