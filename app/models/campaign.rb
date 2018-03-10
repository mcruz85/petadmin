class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :campaign_clients
  has_many :clients, through: :campaign_clients

  validates :title, presence: true
  validates :body, presence: true

  def fae_display_field
    title
  end


end
