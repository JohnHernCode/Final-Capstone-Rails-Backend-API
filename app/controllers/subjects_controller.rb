# frozen_string_literal: true

# Subject Controller
class SubjectsController < ApplicationController
  before_action :authorized, except: %i[index show]
  before_action :set_subject, only: %i[show update destroy]

  def index
    @subjects = Subject.order_by_title
    render json: @subjects, status: 200
  end

  def show
    if @subject
      render json: @subject, status: 200
    else
      render json: { error: 'Sorry, the subject was not found' }, status: 404
    end
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      render json: @subject, status: 201
    else
      render json: { error: 'subject could not be created.' }, status: 404
    end
  end

  def update
    if @subject.update(subject_params)
      render json: @subject, status: 200
    else
      render json: { error: 'subject could not be updated.' }, status: 404
    end
  end

  def destroy
    if @subject
      @subject.destroy
      render json: { message: 'Successfully deleted', deleted_subject: @subject }, status: 200
    else
      render json: { error: 'subject could not be deleted' }, status: 404
    end
  end

  private

  def subject_params
    params.permit(:title, :unit, :icon, :target)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end
end
