require "rails_helper"

RSpec.describe User, type: :model do
  context "validations tests" do
    it "ensures the password is present" do
      user = User.new(id: 1, email: "test")
      expect(user.valid?).to eq(false)
    end
    it "validates the username is present" do
      user = User.new(id: 1, password: "test")
      expect(user.valid?).to eq(false)
    end
  end
end
