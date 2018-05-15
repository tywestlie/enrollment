require 'rails_helper'

describe 'user visits addres new page' do
  it 'user creates and address' do
    student = Student.create(name: 'Paul')
    description = 'Lovely Home!'
    street = '123 fakestreet'
    city = 'Fakesville'
    state = 'Colorado'
    zip = 12345

    visit new_student_address_path(student)

    fill_in :address_description, with: description
    fill_in :address_street, with: street
    fill_in :address_city, with: city
    fill_in :address_state, with: state
    fill_in :address_zip_code, with: zip

    click_on 'Create Address'
    expect(current_path).to eq(student_path(student))
  end
end
