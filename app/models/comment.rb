class Comment < ActiveRecord::Base
  validates_presence_of :menu_item
  validates :body, presence: true, length: { minimum: 6 }

  belongs_to :menu_item
end
