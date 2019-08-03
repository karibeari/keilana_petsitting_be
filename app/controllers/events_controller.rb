class EventsController < ApplicationController
  before_action :find_event, only: [:update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.create(event_params, confirmed:false)
    render json: @event
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @event.destroy
    render json: @event, status: :deleted
  end

  private

  def event_params
    params.permit(:start, :end, :human_name, :pet_name, :pet_type, :email, :phone)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
