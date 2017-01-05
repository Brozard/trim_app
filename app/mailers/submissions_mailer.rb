class SubmissionsMailer < ApplicationMailer
  default from: 'omnischedulerapp@gmail.com'
 
  def submission_email(submission)
    @submission = submission
    # @url  = 'http://eatgamecode.com'
    # mail(to: @submission.email, subject: 'Your Submission Has Been Made')
    mail(to: 'eatgamecode@gmail.com', subject: "Coding Challenge Submission by #{@submission.full_name}")
  end
end
