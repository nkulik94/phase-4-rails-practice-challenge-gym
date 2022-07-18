class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates :gym, presence: true, uniqueness: true
    validates :client, presence: true
    validates :charge, presence: true, numericality: true
end
