class Bidding < ActiveRecord::Base
  # attr_accessible :description, :name, :documments
  has_many :documents, :as => :documentable
  accepts_nested_attributes_for :documents, :allow_destroy => true
end
