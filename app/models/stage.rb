# == Schema Information
#
# Table name: stages
#
#  id                      :integer          not null, primary key
#  user_id                 :integer
#  name                    :string
#  number                  :integer
#  number_of_deals         :integer
#  total_days              :integer
#  active_days             :integer
#  probability_deal_closes :float
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Stage < ApplicationRecord
end
