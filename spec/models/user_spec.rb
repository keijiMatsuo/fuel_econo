require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
end

describe 'ユーザー新規登録' do
  context '新規登録できる' do
    it 'name, email, password, password_confirmation が存在すれば登録できる' do
      expect(@user).to be_valid
    end
    it 'passwordが6文字以上あれば登録できる' do
      @user.password = 'abCD12'
      @user.password_confirmation = 'abCD12'
      expect(@user).to be_valid
    end
  end
