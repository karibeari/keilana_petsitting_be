class EventSerializer < ActiveModel::Serializer
  attributes :start, :end, :human_name, :pet_name, :pet_type, :email, :phone, :confirmed
end
