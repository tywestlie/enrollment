require 'rails_helper'

describe 'user visits new student page' do
  it 'can create a new student' do
    name = 'Tim'
    visit new_student_path

    fill_in :student_name, with: name

    click_on 'Create Student'
    
    expect(current_path).to eq(students_path)
    expect(page).to have_content(name)
  end
end
