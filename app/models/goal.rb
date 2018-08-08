# == Schema Information
#
# Table name: goals
#
#  id                       :integer          not null, primary key
#  sales_goal               :integer
#  sales_goal_period        :string
#  period_end               :date
#  average_deal_size        :integer
#  period_closed_deal_value :integer
#  pipeline_stages          :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :integer
#

class Goal < ApplicationRecord
end
