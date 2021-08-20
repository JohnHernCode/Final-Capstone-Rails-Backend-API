# frozen_string_literal: true

# Subject Model
class Subject < ApplicationRecord
  has_many :measures, dependent: :destroy
  has_many :users, through: :measures
  validates_presence_of :title, :unit, :target

  scope :order_by_title, -> { order(title: :asc) }
end
