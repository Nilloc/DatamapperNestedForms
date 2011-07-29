class Survey

  include DataMapper::Resource

  property :id, Serial

  property :name, String
  
  has n, :questions#, :dependent => :destroy
  
  accepts_nested_attributes_for :questions, :reject_if => lambda {|q| q[:content].blank?}

end
