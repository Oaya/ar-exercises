class Store < ActiveRecord::Base
  has_many :employees
  validate :has_mens_or_womens_apparel
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0 }
 
  

  def has_mens_or_womens_apparel
    # puts "Hi"
    # puts "#{mens_apparel},#{womens_apparel}"
    if (mens_apparel == false || mens_apparel == nil) && (womens_apparel == false || womens_apparel == nil)
      errors.add(:has_mens_or_womens_apparel, "should have carry men's or women's apparel")
    end
  end


end
