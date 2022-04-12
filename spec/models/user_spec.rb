require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "should match the password confirmation" do
      @password = "12345"
      @password_confirmation = "12345"
      @user = User.new(first_name: "Tom", last_name:"Jerry", email: "gggg@gmail.com", password: @password, password_confirmation: @password_confirmation)
      expect(@user).to be_valid
    end

    it "should not allow empty first name" do
      @password = "12345"
      @password_confirmation = "12345"
      @user = User.new(first_name: "", last_name:"Jerry", email: "gggg@gmail.com", password: @password, password_confirmation: @password_confirmation)
      expect(@user).to_not be_valid
    end

    it "should not allow empty first name" do
      @password = "123"
      @password_confirmation = "123"
      @user = User.new(first_name: "Tom", last_name:"Jerry", email: "gggg@gmail.com", password: @password, password_confirmation: @password_confirmation)
      expect(@user).to_not be_valid
    end

  end

  describe '.authenticate_with_credentials' do
    it "authentication should not be valid" do
      @user = User.new(first_name: "Tom", last_name:"Jerry", email: "gggg@gmail.com", password: @password, password_confirmation: @password_confirmation)
      expect(@user).to_not be_valid
    end

    it "authentication should be valid" do
      @password = "12345"
      @password_confirmation = "12345"
      @user = User.new(first_name: "Tom", last_name:"Jerry", email: "gggg@gmail.com", password: @password, password_confirmation: @password_confirmation)
      expect(@user).to be_valid
    end
  end
end
