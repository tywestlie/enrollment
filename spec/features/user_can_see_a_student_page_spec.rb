require 'rails_helper'

describe 'user visits a student show page' do
  it 'can see a page with a student' do
    student = Student.create!(name: 'Jimmy')
    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
