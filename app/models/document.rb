class Document < ActiveRecord::Base
  # attr_accessible :name, :file
  belongs_to :documentable, :polymorphic => true
  mount_uploader :file, FileUploader
end
