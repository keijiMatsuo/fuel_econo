require 'rails_helper'

RSpec.describe Economy, type: :model do
  before do
    @economy = FactoryBot.build(:economy)
end