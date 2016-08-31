class Share < ActiveRecord::Base
  belongs_to :project
  has_many :purchases

  validates :price, numericality: {greater_than: 0}
  validates :share_type, :price, presence: true

end
