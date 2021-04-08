module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: true
    field :fname, String, null: true
    field :lname, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :quizzes, [Types::QuizType], null: true

    def full_name
      # `object` references the user instance
      [object.fname, object.lname].compact.join(" ")
    end
  end
end
