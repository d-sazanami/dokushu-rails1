class EntriesController < ApplicationController
  before_action :set_entry, only: [:destroy]
  before_action :set_entry_params, only: [:confirm, :confirm_back, :create]

  def new
    @entry = Entry.new(room_id: params[:room_id])
  end

  def create
    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry.room, notice: "Entry was successfully created." }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end
  

  def destroy
    @entry ||= Entry.find(params[:id])
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to @entry.room, notice: "Entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def index
    @entries = Entry.new
  end

  def confirm
    if @entry.invalid?
      render :new
    end
  end

  def confirm_back
    render :new
  end

  private
  def entry_params
    params.require(:entry).permit(:user_name, :user_email, :reserved_date, :usage_time, :room_id, :people)
  end

  def set_entry_params
    @entry = Entry.new(entry_params)
  end
end
