# frozen_string_literal: true

# Represents an customer in the application.
class Customer < ApplicationRecord
    acts_as_paranoid
    belongs_to :role
    has_many :articles, dependent: :destroy
    has_many :categories, dependent: :destroy
  
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable, :confirmable
  
    def full_name
      "#{first_name} #{last_name}"
    end
  
    def active_for_authentication?
      super and self.active?
    end
  end
  