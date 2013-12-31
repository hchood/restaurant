class MenuItem < ActiveRecord::Base
  validates_presence_of :name, :price_in_cents, :description

  def price_in_dollars
    self.price_in_cents.to_f / 100.0
  end
end
