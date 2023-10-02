class User < ApplicationRecord
  require 'string_enum'
  has_many :houses,
           foreign_key: :user_id,
           dependent: :destroy

  enum type: {
    'User::Owner': 'User::Owner',
    'User::Customer': 'User::Customer'
  }

  def owner?
    type == 'User::Owner'
  end

  class Owner < User
  end

  class Customer < User
  end
end
