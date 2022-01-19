class Project < ApplicationRecord
  validates :users, :sprints, presence: true
end
