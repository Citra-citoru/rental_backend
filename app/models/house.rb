class House < ApplicationRecord
  self.inheritance_column = :_sti_disabled
  belongs_to :user
end
