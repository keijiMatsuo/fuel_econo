require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
end

describe 'ユーザー新規登録' do
  context '新規登録できる' do
    it 'name, email, password, password_confirmationが存在すれば登録できる' do
      expect(@user).to be_valid
    end
    it 'passwordが6文字以上あれば登録できる' do
      @user.password = 'abCD12'
      @user.password_confirmation = 'abCD12'
      expect(@user).to be_valid
    end
  end

  context '新規登録できない' do
    it 'nameが空では登録できない' do
      @user.name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end
    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password doesn't match Password")
    end
    it 'password_confirmationが空では登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it
    end
  end
end
