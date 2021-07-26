require 'rails_helper'

RSpec.describe Economy, type: :model do
  before do
    @economy = FactoryBot.build(:economy)
end

describe '燃費登録' do
  context '燃費を計算できる' do
    it 'mileageとamountがあれば計算できる' do
      expect(@economy).to be_valid
    end
  end
  context '燃費を計算できない' do
    it 'mileageが空では登録できない' do
      @economy.mileage = ''
      @economy.valid?
      expect(@economy.errors.full_messages).to include()
    end
    it 'amountが空では登録できない' do
      @economy.amount = ''
      @economy.valid?
      expect(@economy.errors.full_messages).to include()
    end
    it 'mileageが半角数字でないと登録できない' do
      @economy.mileage = '１００'
      @economy.valid?
      expect(@economy.errors.full_messages).to include()
    end

  end
end
