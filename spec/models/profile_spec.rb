# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  realname     :string(255)      default("")
#  id_no        :string(255)      default("")
#  sex          :string(255)
#  mobile       :string(255)
#  birth_day    :date
#  death_day    :date
#  address      :string(255)
#  archive_id   :integer
#  email        :string(255)
#  updated_once :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  avatar       :string(255)
#  id_no_img    :string(255)
#

require 'rails_helper'

RSpec.describe Profile, type: :model do
end
