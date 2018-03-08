class Product < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    title
  end

  has_fae_image :hero_image


  belongs_to :supplier
end
