class ApplicationRecord < ActiveRecord::Base
  rolify
  self.abstract_class = true
end
