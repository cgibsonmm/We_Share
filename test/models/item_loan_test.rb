# == Schema Information
#
# Table name: item_loans
#
#  id                            :integer          not null, primary key
#  item_id                       :integer
#  from_user                     :integer
#  to_user                       :integer
#  owner_confirmed_loan          :boolean          default(FALSE)
#  owner_confirmed_loan_returned :boolean
#  duration                      :datetime
#  start_date                    :datetime
#  checkedout_at                 :datetime
#  due_at                        :datetime
#  returned_at                   :datetime
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#

require 'test_helper'

class ItemLoanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
