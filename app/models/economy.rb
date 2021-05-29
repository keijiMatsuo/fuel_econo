class Economy < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    with_options format: { with: /\A[0-9]+\z/ } do
      with_options numericality: { only_intger: true } do
        validates :mileage
        validates :amount
      end
    end
  end
end
