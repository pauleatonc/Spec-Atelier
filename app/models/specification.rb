class Specification < ApplicationRecord
  belongs_to :project
  belongs_to :product
  resourcify
end
