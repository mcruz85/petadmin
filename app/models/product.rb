class Product < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, uniqueness: true, presence: true
  validates :price, presence: true

  def fae_display_field
    title
  end

  has_fae_image :hero_image


  belongs_to :supplier
end
