class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :name, :created_at, :babysitter_id
end
