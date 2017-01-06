class Submission < ApplicationRecord
  validates :full_name,
            presence: true,
            length: { in: 3..60 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: { in: 6..50 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :project_repo,
            presence: true
  validates :project_url,
            presence: true
  validates :oop_best_practices, :modular_dev, :workflow_understanding, :testing, :database_knowledge, :debugging, :problem_solving, :javascript, :html, :css, :teamwork, :self_motivation, :communication_skils, :energy_level, :intelligence,
            presence: true,
            length: { in: 1..2 },
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
              less_than_or_equal_to: 50
            }
  validates :sum_of_attributes,
            numericality: { less_than_or_equal_to: 50 }

  private

    def sum_of_attributes
      oop_best_practices + modular_dev + workflow_understanding + testing + database_knowledge + debugging + problem_solving + javascript + html + css + teamwork + self_motivation + communication_skils + energy_level + intelligence
    end
end
