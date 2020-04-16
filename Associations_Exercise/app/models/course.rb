
class Course < ApplicationRecord

    has_many :enrollments,
    foreign_key: :course_id,
    primary_key: :id,
    class_name: :Enrollment

    has_many :enrolled_students,
    through: :enrollments,
    source: :user

    belongs_to :prerequisites,
    foreign_key: :prereq_id,
    primary_key: :id,
    class_name: :Course, optional: true

    has_many :instructor,
    foreign_key: :prereq_id,
    primary_key: :id,
    class_name: :User


end