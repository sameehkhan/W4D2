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
validates :name, :birth_date, :color, :sex, :description, presence: true 

validates :color, inclusion: { in: %w(red white black blue orange green yellow purple),
    message: "%{value} is not a valid color" }

validates :sex, inclusion: { in: %w(M F),
      message: "Please enter valid option (i.e. 'F' )" }

  include ActionView::Helpers::DateHelper

  def age
    time_ago_in_words(birth_date)
  end
end
