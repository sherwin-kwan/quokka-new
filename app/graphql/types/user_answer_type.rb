module Types
  class UserAnswerType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :attempt_id, Integer, null: false
    field :possible_answer_id, Integer, null: false
    field :attempt, Types::AttemptType, null: false
    field :possible_answer, Types::PossibleAnswerType, null: false
  end
end
