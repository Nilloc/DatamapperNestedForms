class Question

  include DataMapper::Resource

  property :id, Serial

  property :survey_id, Integer
  property :content, Text
  
  belongs_to :survey

end
