module Types
  class AttemptType < Types::BaseObject
    field :id, ID, null: false
    field :started_at, GraphQL::Types::ISO8601DateTime, null: true
    field :finished_at, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: false
    field :quiz_id, Integer, null: false
    field :user, Types::UserType, null: false
    field :quiz, Types::QuizType, null: false
  end
end
