require 'rails_helper'

RSpec.describe User::Operation::Create do
  context "with valid params" do
    it "successfully creates new user" do
      result = User::Operation::Create.(params:{user:{name:'bhushan', email:'bhushan@gmail.com'}})

      expect(result.success?).to eq(true)
    end
  end

  context "with invalid params returns error" do
    it "name cannot be blank" do
      result = User::Operation::Create.(params:{user:{name:'', email:'bhushan@gmail.com'}})

      expect(result["contract.default"].errors.full_messages).to include("Name can't be blank")
    end

    it "email cannot be blank" do
      result = User::Operation::Create.(params:{user:{name:'bhushan', email:''}})

      expect(result["contract.default"].errors.full_messages).to include("Email can't be blank")
    end
  end
end