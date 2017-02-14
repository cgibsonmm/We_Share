module ItemsHelper
  def options_for_select
    %w(Tool Pump)
  end

  def avalible?(item)
    if item.item_loans.owner_confirmed_loan == false && item.item_loans.owner_confirmed_loan_returned != false
      link_to 'Request Item', item_loans_new_path(item)
    else
      "Item loaned"
    end 
  end
end
