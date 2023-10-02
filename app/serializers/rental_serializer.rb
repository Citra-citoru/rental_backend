class RentalSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :location, :image, :number_of_bedroom, :user_id, :created_at, :updated_at
end
