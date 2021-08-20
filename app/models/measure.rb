# frozen_string_literal: true

# Measures Model
class Measure < ApplicationRecord
  belongs_to :subject
  belongs_to :user
  validates_presence_of :result, :date

  scope :order_by_date, -> { order(date: :desc) }

  def self.all_measures(user)
    user.measures.order_by_date.joins(:subject).select('
      measures.id,
      measures.user_id,
      subject_id,
      date,
      result,
      subject.target AS target
      ')
  end

  def self.all_measure_dates(user)
    user.measures.order_by_date.pluck(:date).uniq
  end
end

