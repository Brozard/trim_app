class SubmissionsMailer < ApplicationMailer
  default from: ENV["MAIN_EMAIL"]
 
  def submission_email(submission)
    @submission = submission
    # mail(to: ENV["SUBMISSION_EMAIL"], subject: "Trim Agency Coding Challenge Submission by #{@submission.full_name}")
    mail(to: ENV["MAIN_EMAIL"], subject: "Trim Agency Coding Challenge Submission by #{@submission.full_name}")
  end
end
