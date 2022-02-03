class CompanySerializer
  # include FastJsonapi::ObjectSerializer
  # attributes :name, :slug, :image_url
  # has_many :reviews
# CompanySerializer.new(company).as_json => give out as json fomat
# CompanySerializer.new(airline).serialized_json => check the serializer

end
