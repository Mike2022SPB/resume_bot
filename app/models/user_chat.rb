class UserChat < ApplicationRecord
  belongs_to :profile
  belongs_to :chat
end
