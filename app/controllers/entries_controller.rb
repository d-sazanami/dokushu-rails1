class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: "Entry was successfully created." }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: "Entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def index
    @entries = Entry.new
  end

  def confirm
  end

  private
  def entry_params
    params.require(:entry).permit(:user_name, :user_email, :reserved_date, :usage_time, :room_id, :people)
  end
end
