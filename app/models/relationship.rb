# == Schema Information
# Schema version: 20110628135424
#
# Table name: relationships
#
#  id          :integer         not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

# class Relationship < ActiveRecord::Base
#     attr_accessible :followed_id
#     
#     belongs_to :follower, :foreign_key => "follower_id", :class_name => "User"
#     belongs_to :follower, :foreign_key => "followed_id", :class_name => "User"
#     
# end

class Relationship < ActiveRecord::Base
  attr_accessible :followed_id
  
  belongs_to :follower, :class_name => "User"
  belongs_to :followed, :class_name => "User"
  
  validates :follower_id, :presence => true
  validates :followed_id, :presence => true
end