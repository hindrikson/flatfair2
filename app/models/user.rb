class User < ApplicationRecord
  has_many :todos, dependent: :nullify
end
