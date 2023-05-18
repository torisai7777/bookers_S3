class Book < ApplicationRecord
  belongs_to :user
  has_many :book_comments
  has_many :favorites
  
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  scope :created_today, -> { where(created_at: Time.zone.now.all_day) } # 今日
  scope :created_yesterday, -> { where(created_at: 1.day.ago.all_day) } # 前日
  scope :created_2days, -> {where(created_at: 2.day.ago.all_day)}
  scope :created_3days, -> {where(created_at: 3.day.ago.all_day)}
  scope :created_4days, -> {where(created_at: 4.day.ago.all_day)}
  scope :created_5days, -> {where(created_at: 5.day.ago.all_day)}
  scope :created_6days, -> {where(created_at: 6.day.ago.all_day)}
  scope :created_this_week, -> {where(created_at: 6.day.ago.beginning_of_day..Time.zone.now.end_of_day)}
  scope :created_last_week, -> {where(created_at: 2.week.ago.beginning_of_day..1.week.ago.end_of_day)}
end
