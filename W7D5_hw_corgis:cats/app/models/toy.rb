class Toy < ApplicationRecord

    belongs_to :toyable, polymorphic: true

    validates :name, presence: true, uniqueness: { scope: [:toyable_type, :toyable_id] }
    validates :toyable_type, presence: true
    validates :toyable_id, presence: true
    
end