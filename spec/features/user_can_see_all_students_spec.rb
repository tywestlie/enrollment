require 'rails_helper'

describe 'a user visits the student index page' do
  it 'can see all of the students' do
    student1 = Student.create!(name: 'Jimmy')
    student2 = Student.create!(name: 'Bob')

    visit students_path

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
end
end
