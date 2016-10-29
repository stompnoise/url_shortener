class Link < ActiveRecord::Base
  
  after_create  :generate_code
  
  def shortened_url
    ENV['base_url'] + "/go/" + self.code
  end
  
  def generate_code
    self.code = self.id.to_s(36)
    self.save
  end  
  
end
