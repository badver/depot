class Product < ActiveRecord::Base
  validates :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }, presence: true
  validates :title, uniqueness: true, presence: true, length: { minimum: 10 }
  validates :image_url, presence: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

  def self.latest
    Product.order(:updated_at).last
  end

end
