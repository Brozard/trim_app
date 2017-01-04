require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_submission_url
    assert_response :success
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { communication_skils: @submission.communication_skils, css: @submission.css, database_knowledge: @submission.database_knowledge, debugging: @submission.debugging, email: @submission.email, energy_level: @submission.energy_level, full_name: @submission.full_name, html: @submission.html, intelligence: @submission.intelligence, javascript: @submission.javascript, modular_dev: @submission.modular_dev, oop_best_practices: @submission.oop_best_practices, problem_solving: @submission.problem_solving, project_repo: @submission.project_repo, project_url: @submission.project_url, self_motivation: @submission.self_motivation, teamwork: @submission.teamwork, testing: @submission.testing, workflow_understanding: @submission.workflow_understanding } }
    end

    assert_redirected_to submission_url(Submission.last)
  end

  test "should show submission" do
    get submission_url(@submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_submission_url(@submission)
    assert_response :success
  end

  test "should update submission" do
    patch submission_url(@submission), params: { submission: { communication_skils: @submission.communication_skils, css: @submission.css, database_knowledge: @submission.database_knowledge, debugging: @submission.debugging, email: @submission.email, energy_level: @submission.energy_level, full_name: @submission.full_name, html: @submission.html, intelligence: @submission.intelligence, javascript: @submission.javascript, modular_dev: @submission.modular_dev, oop_best_practices: @submission.oop_best_practices, problem_solving: @submission.problem_solving, project_repo: @submission.project_repo, project_url: @submission.project_url, self_motivation: @submission.self_motivation, teamwork: @submission.teamwork, testing: @submission.testing, workflow_understanding: @submission.workflow_understanding } }
    assert_redirected_to submission_url(@submission)
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete submission_url(@submission)
    end

    assert_redirected_to submissions_url
  end
end
