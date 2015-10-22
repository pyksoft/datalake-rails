# == Schema Information
#
# Table name: loans
#
#  id                  :integer          not null, primary key
#  start_day           :date
#  end_day             :date
#  notary_type         :string(255)
#  description         :string(255)
#  amount              :float(24)
#  property_related_id :integer
#  repay_on_time       :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Loan < ActiveRecord::Base
  belongs_to :property_related

  extend Enumerize
  enumerize :notary_type, in: [:bank, :small_loan_company, :private_lending_company, :pawnshop], default: :bank


  validates :start_day, presence: true, on: :update
  validates :end_day, presence: true, on: :update
  validates :notary_type, presence: true, on: :update
  validates :description, presence: true, on: :update
  validates :amount, presence: true, on: :update

end
