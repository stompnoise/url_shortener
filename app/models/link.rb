class Link < ActiveRecord::Base
  
  after_create  :generate_code
  
  def generate_code
    self.code = self.id.to_s(36)
    self.save
  end  
  
end
