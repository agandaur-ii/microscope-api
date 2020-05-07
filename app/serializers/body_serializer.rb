class BodySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :body_type, :content
end 
