class ChaptersController < ApplicationController
    def create
        @work = Work.find(params[:work_id])
        @chapter = @work.chapters.create(chapter_params)
        redirect_to work_path(@work)
    end

    private
    def chapter_params
        params.require(:chapter).permit(:chapter_number, :title, :summary)
    end
end
