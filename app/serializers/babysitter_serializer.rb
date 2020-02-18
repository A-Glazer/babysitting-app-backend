class BabysitterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_number, :created_at, :updated_at

  has_many :comments
  has_many :slots
end
