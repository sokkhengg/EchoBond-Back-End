class UserSerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :name, :password_digest, :email, :user_type, :quizzes
    has_many :quizzes 
    has_many :user_attributes
end