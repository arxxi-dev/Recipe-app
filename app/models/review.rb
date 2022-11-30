class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :description, length: { in: 5..200,
                                    message: I18n.t('errors.out_of_range_error', start_range: 5, end_range: 200) }
  validates :rating, numericality: { in: 0..5, message: I18n.t('errors.out_of_range_error', start_range: 0, end_range: 5),
                                     only_integer: true }, presence: true
  validates :recipe_id, uniqueness: { scope: :user_id, message: I18n.t('errors.uniqueness_error') }
end
