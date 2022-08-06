class Freebie < ActiveRecord::Base
  belongs_to :company
  belongs_to :dev

  def print_details
    binding.pry
   "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
  end
end
