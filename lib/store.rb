class Store < ActiveRecord::Base
  has_many :employees

  validates :name,
            presence: true,
            length: { minimum: 3 }

  validates :annual_revenue,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0 }

  validate :must_sell_mens_or_womens

  before_destroy :prevent_destruction_of_store_with_employees

  private

  def must_sell_mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(:base, "Must sell either mens or womens apparel")
    end
  end

  def prevent_destruction_of_store_with_employees
    if self.employees.size >= 0
      throw :abort
    end
  end

end
