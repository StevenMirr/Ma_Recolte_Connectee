require 'open-uri'
require 'nokogiri'

class Produit < ApplicationRecord
  belongs_to :exploitation
  has_many :commandes, through: :baskets

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  has_one_attached :photo

  def find_related_recipes
    url = "https://www.allrecipes.com/search?q=#{self.name}"

    # Fetch the HTML content
    html_content = URI.open(url).read

    # Parse HTML using Nokogiri
    doc = Nokogiri::HTML.parse(html_content)

    # Extract recipe titles and URLs
    recipes = []
    doc.css(".comp.mntl-card-list-items.mntl-document-card.mntl-card.card.card--no-image").each do |link|
      recipe_title = link.css(".card__title-text").text.strip
      recipe_url = link.attribute('href').value
      recipes << { title: recipe_title, url: recipe_url }
    end

    recipes
  end

end
