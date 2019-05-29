class EventSerializer < ActiveModel::Serializer
  attributes :start, :end, :human_name, :pet_name
end
