require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  it "有効なファクトリがあること" do
    expect(FactoryBot.build(:user)).to be_valid
  end
 
  it "名前、メール、パスワードがあれば有効な状態であること" do
    user = User.new(
      name: "テストユーザ",
      email: "test@test.com",
      password: "password",
      password_digest: "password"
    )
    expect(user).to be_valid
  end

  it "名前がなければ無効な状態であること" do
    @user.name = nil
    @user.valid?
    expect(@user.errors[:name]).to include("を入力してください")
  end

  it "名前が空白の時は無効であること" do
    @user.name = "  "
    @user.valid?
    expect(@user.errors[:name]).to include()
  end

  it "名前が51字以上は無効であること" do
    @user.name = "a" * 51
    @user.valid?
    expect(@user.errors[:name]).to include()
  end

  it "メールがなければ無効な状態であること" do
    @user.email = nil
    @user.valid?
    expect(@user.errors[:email]).to include("を入力してください")
  end

  it "メールが空白の時は無効であること" do
    @user.email = "  "
    @user.valid?
    expect(@user.errors[:email]).to include()
  end

  it "メールが201字以上は無効であること" do
    @user.email = "a" * 201
    @user.valid?
    expect(@user.errors[:name]).to include()
  end

  it "パスワードがなければ無効な状態であること" do
    @user.password_digest = nil
    @user.valid?
    expect(@user.errors[:password]).to include("を入力してください")
  end

  it "パスワードが空白の時は無効であること" do
    @user.password = "  "
    @user.valid?
    expect(@user.errors[:password]).to include()
  end

  it "パスワードが6文字未満は無効であること" do
    @user.password = "a" * 5
    @user.valid?
    expect(@user.errors[:password]).to include()
  end

  it "重複したメールアドレスは無効であること" do
    user1 = User.new(
      name: "テストユーザ",
      email: "test@test.com",
      password: "password",
      password_digest: "password"
    )
    user2 = User.new(
      name: "テストユーザ",
      email: "test@test.com",
      password: "password",
      password_digest: "password"
    )
    user2.valid?
    expect(user2.errors[:email]).to include()
  end

  it "メールアドレスは小文字で保存されること" do
    @user.email = "TEST@TEST.COM"
    @user.save!
    expect(@user.reload.email).to eq "test@test.com"
  end
end