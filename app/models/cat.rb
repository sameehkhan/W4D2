# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :string           not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  def age
    time_ago_in_words(birth_date)
  end
end
