class PractitionerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :profile_img, :reviews
end
