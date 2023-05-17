class Relationship < ApplicationRecord
  # belongs_to :user
  belongs_to :follower, class_name: "User"  # 追記
  belongs_to :followed, class_name: "User"  # 追記
end
