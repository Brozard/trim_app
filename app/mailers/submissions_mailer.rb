class SubmissionsMailer < ApplicationMailer
  default from: 'omnischedulerapp@gmail.com'
 
  def submission_email(submission)
    @submission = submission
    mail(to: 'eatgamecode@gmail.com', subject: "Trim Agency Coding Challenge Submission by #{@submission.full_name}")
  end
end
