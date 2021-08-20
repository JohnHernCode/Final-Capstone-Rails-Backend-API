# frozen_string_literal: true

# Measures Controller
class MeasuresController < ApplicationController
  before_action :authorized
  before_action :set_measure, only: %i[show update destroy]

  def index
    @measures = Measure.all_measures(@current_user)
    @measure_dates = Measure.all_measure_dates(@current_user)

    if @measures
      render json: { measures: @measures, measure_dates: @measure_dates }, status: 200
    else
      render json: 'No measurements yet'
    end
  end

  def show
    if @measure
      render json: @measure, status: 200
    else
      render json: { error: 'Measurement not found' }, status: 404
    end
  end

  def create
    # rubocop:disable Layout/LineLength
    @measure = @current_user.measures.create(result: meas_params[:result], subject_id: meas_params[:subjectId], date: meas_params[:date])
    # rubocop:enable Layout/LineLength

    if @measure.valid?
      render json: @measure, status: 201
    else
      render json: { error: 'Measurement could not be created.' }, status: 404
    end
  end

  def update
    if @measure.update(result: meas_params[:result], subject_id: meas_params[:subjectId], date: meas_params[:date])
      render json: @measure, status: 200
    else
      render json: { error: 'Measurement could not be updated.' }, status: 422
    end
  end

  def destroy
    if @measure
      @measure.destroy
      render json: { message: 'Successfully deleted', deleted_measure: @measure }, status: 200
    else
      render json: { error: 'Sorry, Measurement could not be deleted' }, status: 422
    end
  end

  private

  def set_measure
    @measure = @current_user.measures.find(params[:id])
  end

  def meas_params
    params.require(:measure).permit(:result, :subject_id, :date, :subjectId)
  end
end
