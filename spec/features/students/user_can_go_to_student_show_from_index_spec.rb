require 'rails_helper'

describe 'user visits student index page' do
  it 'user clicks on student link' do
    student1 = Student.create(name: 'Tom')
    student2 = Student.create(name: 'Ashley')

    visit students_path

    within(".student_#{student1.id}") do
      click_on "#{student1.name}"
    end

    expect(current_path).to eq(student_path(student1))
  end
end
