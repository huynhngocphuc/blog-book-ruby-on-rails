# frozen_string_literal: true

# Represents an category in the application.
class Category < ApplicationRecord
    acts_as_paranoid
    belongs_to :customer
    has_many :articles, dependent: :destroy
  
    validates :title, presence: true, length: { maximum: 140 }
    validates :content, presence: true, length: { maximum: 300 }
  
    def private_mode?
      share_mode == 'private'
    end
  
    def public_mode?
      share_mode == 'public'
    end
  end
  