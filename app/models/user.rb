# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :text
#  name       :text
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	has_many :articles
end
