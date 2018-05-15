require 'rails_helper'

describe  'user visits a student show page' do
  it 'can see a page with a student' do
    visit student_path

    expect(page).to have_content('Jimmy')
  end
end
