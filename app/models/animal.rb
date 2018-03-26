class Animal < ApplicationRecord
  belongs_to :tribe
  self.inheritance_column = :race

  scope :lions, -> { where(race: 'Lion') }
  scope :meerkats, -> { where(race: 'Meerkat') }
  scope :wild_boars, -> { where(race: 'WildBoar') }

  # We will need a way to know which animals
  # will subclas the Animal model
  def self.races
    %(Lion WildBoar Meerkat)
  end

  def talk
    raise 'Abstract Method'
  end
end
