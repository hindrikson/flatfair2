class Project < ApplicationRecord
  # validates :name, presence: true
  validates :name, presence: {message: "Did you forget to add a name?"}
end
