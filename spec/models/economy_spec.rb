require 'rails_helper'

RSpec.describe Economy, type: :model do
  before do
    @economy = FactoryBot.build(:economy)
end

describe '燃費登録' do
  context '燃費を計算できる' do
    it '走行距離と給油量があれば計算できる' do
      expect(@economy).to be_valid
    end
  end
  context '燃費を計算できない' do
  end
end
