require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  it "is invalid without an email address" do
    user = build(:user, email: nil)
    expect(user.valid?).to be false
  end

  it "is invalid without a first_name" do
    user = build(:user, first_name: nil)
    expect(user.valid?).to be false
  end

  it "is invalid without a last_name" do
    user = build(:user, last_name: nil)
    expect(user.valid?).to be false
  end

  it "is invalid without a password" do
    user = build(:user, password: nil)
    expect(user.valid?).to be false
  end

  it "is invalid without a password_confirmation" do
    user = build(:user, password_confirmation: nil)
    expect(user.valid?).to be false
  end

  it "is invalid if password and password confirmation don't match" do
    user = build(:user, password: "abcde", password_confirmation: "edcba")
    expect(user.valid?).to be false
  end
end
