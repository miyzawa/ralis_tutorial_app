class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def hello
	  render html: "hello, world"
  end
end
