class CurationTag < ApplicationRecord
  belongs_to :tag
  belongs_to :curation
end
