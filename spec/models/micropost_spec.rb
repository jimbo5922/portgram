require 'rails_helper'

RSpec.describe Micropost, type: :model do
  before do
    @micropost = FactoryBot.build(:micropost)
  end

  it "有効なファクトリがあること" do
    expect(FactoryBot.build(:micropost)).to be_valid
  end

  it "micropostが投稿できること" do
    expect(@micropost).to be_valid
  end

  it "ユーザが存在しない投稿はできないこと" do
    @micropost.user = nil
    @micropost.valid?
    expect(@micropost.errors).to be_added(:user_id, :blank)
  end

  it "本文を入力しない投稿はできないこと" do
    @micropost.content = nil
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "本文が空白の投稿はできないこと" do
    @micropost.content = "  "
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "本文が200文字以内であること" do
    @micropost.content = "a" * 100
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "本文が201文字以上の投稿はできないこと" do
    @micropost.content = "a" * 201
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "住所を入力していない投稿はできないこと" do
    @micropost.address = nil
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "住所が空白の投稿はできないこと" do
    @micropost.address = "  "
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "住所が50文字以下であること" do
    @micropost.address = "a" * 50
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "住所が51文字以上の投稿はできないこと" do
    @micropost.address = "a" * 51
    @micropost.valid?
    expect(@micropost.errors).to include()
  end

  it "写真がない投稿はできないこと" do
    @micropost.picture = nil
    @micropost.valid?
    expect(@micropost.errors).to include()
  end
end