require 'rails_helper'

describe Student do
  describe "validations" do
      it "is invalid without a name" do
        student = Student.new()

        expect(student).to be_invalid
      end

      it "is valid with a name" do
        student = Student.new(name: "Jimmy")

        expect(student).to be_vaild
      end
    end
  end
