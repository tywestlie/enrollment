require 'rails_helper'

describe 'user visits a student edit page' do
  it 'edits a students name' do
    new_name = 'Tony'
    student = Student.create(name: 'Jimmy')

    visit edit_student_path(student)

    fill_in :student_name, with: new_name

    click_on 'Update Student'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(new_name)
  end
end
