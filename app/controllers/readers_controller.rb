class ReadersController < ApplicationController
  

  def create
    @work = Work.find(params[:work_id])
    @reader = @work.readers.create!(reader_params)
    redirect_to @work
  end
  
  def new
    @work = Work.find(params[:work_id])
    @reader = @work.readers.build
  end

  private

  def reader_params
      params.require(:reader).permit(:first_name, :last_name, :age, :comment)
  end  

end
