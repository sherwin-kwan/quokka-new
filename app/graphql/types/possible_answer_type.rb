module Types
  class PossibleAnswerType < Types::BaseObject
    field :id, ID, null: false
    field :answer_text, String, null: true
    field :is_correct, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :question_id, Integer, null: false
    field :question, Types::QuestionType, null: false
  end
end
