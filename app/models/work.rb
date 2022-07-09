class Work < ApplicationRecord
    belongs_to :user 
    has_many :chapters, dependent: :destroy
    has_and_belongs_to_many :readers

    validates :cargo, presence: true
end
