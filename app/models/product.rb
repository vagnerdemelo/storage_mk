class Product < ApplicationRecord
  before_create :set_alias
  validates :alias, uniqueness: true
  validates :name, uniqueness: true
  validates :available_quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :name, :description, :available_quantity, presence: true

  private
  def set_alias
    if self.alias.nil?
      self.alias = (SecureRandom.rand*1000000000).to_i

      while Product.where(alias: self.alias).count > 0
        self.alias = (SecureRandom.rand*1000000000).to_i
      end
    end
  end

  def get_alias
    self.alias
  end
end
