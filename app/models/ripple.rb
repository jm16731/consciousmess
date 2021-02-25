class Ripple < ApplicationRecord
    validates :name, :message, :date_posted, presence: true
end
