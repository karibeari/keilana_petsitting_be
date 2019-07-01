class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :human_name, :pet_type, :pet_name, :content, :created_at
end
