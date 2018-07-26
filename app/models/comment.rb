class Comment < ApplicationRecord
  belongs_to :article

  #delete this if it doesn't work
  belongs_to :user
end
