class User < ApplicationRecord
  has_many :houses,
           foreign_key: :user_id,
           dependent: :destroy

  set_types(
    owner: 'User::Owner',
    customer: 'User::Customer'
  )

  def owner?
    type == 'User::Owner'
  end

  class Owner < User
  end

  class Customer < User
  end
end
