class Book < ActiveRecord::Base
  # relations
  belongs_to :publisher, class_name: 'Admin::Publisher'
  has_and_belongs_to_many :authors
  before_destroy { authors.clear }

  validates_length_of :title, in: 1..255
  validates_presence_of :publisher_id
  validates_presence_of :authors
  validates_presence_of :published_at
  validates_numericality_of :page_count, only_integer: true
  validates_numericality_of :price
  validates_format_of :isbn, with: /[0-9\-xX]{13}/
  validates_uniqueness_of :isbn
end
