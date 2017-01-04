class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show]

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  def show
    redirect_to :new
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to submissions_path, notice: 'Submission' }
        # format.json { render :new, status: :created, location: @submission }
      else
        format.html { render :new }
        # format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:full_name, :email, :project_repo, :project_url, :oop_best_practices, :modular_dev, :workflow_understanding, :testing, :database_knowledge, :debugging, :problem_solving, :javascript, :html, :css, :teamwork, :self_motivation, :communication_skils, :energy_level, :intelligence)
    end
end
