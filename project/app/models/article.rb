# frozen_string_literal: true

# Represents an article in the application.

require 'elasticsearch/model'
class Article < ApplicationRecord
  include ArticleImageUploader::Attachment(:image)
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  acts_as_paranoid
  belongs_to :customer
  belongs_to :category, optional: true

  validates :title, presence: true, length: { maximum: 140 }
  validates :short_description, presence: true, length: { maximum: 300 }
  validates :content, presence: true
  validates :category_id, presence: true, allow_nil: true
  
  settings do
    mappings dynamic: 'false' do
      indexes :title, type: 'text'
      indexes :content, type: 'text'
    end
  end
  
  def private_mode?
    share_mode == 'private'
  end

  def public_mode?
    share_mode == 'public'
  end

  def self.filtered_articles
    joins("LEFT OUTER JOIN categories ON articles.category_id = categories.id")
    .joins("INNER JOIN customers ON articles.customer_id = customers.id")
    .where("categories.share_mode = ? OR categories.id IS NULL", "public")
    .where("articles.share_mode = ? AND customers.active = ?", "public", true)
  end
end

Article.import

