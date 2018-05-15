require 'rails_helper'

describe 'user visits student edit page' do
  it 'can navigate to student index' do
    student1 = Student.create(name:'Tom')

    visit edit_student_path(student1)

    click_link 'All Students'
    expect(current_path).to eq(students_path)
  end
  it 'can navigate to create a student' do
  student1 = Student.create(name:'Tom')

  visit edit_student_path(student1)

  click_link 'Create A Student'
  expect(current_path).to eq(new_student_path)
  end
end
