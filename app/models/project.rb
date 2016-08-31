class Project < ActiveRecord::Base
  belongs_to :user
  has_many :shares
  has_many :purchases

  accepts_nested_attributes_for :shares

  validates :name, :description, :picture_url, :max_shares, presence: true
  validates :max_shares, numericality: {greater_than: 0}
  validate :valid_time


  def calculate_shares(status)
    shares_sold= Purchase.where(project_id: self.id).sum(:number_of_shares)

    if status == 'sold'
      return shares_sold
    elsif status == 'left'
      return self.max_shares - shares_sold
    end
  end

  def percentage
    self.calculate_shares("sold").to_f/self.max_shares*100
  end

  def days_left
    return ((self.deadline - DateTime.now.utc)/86400).floor
  end

  def valid_time
    if (self.deadline <= Time.now)
      errors.add(:valid_time, "is already passed")
    end
  end
end
