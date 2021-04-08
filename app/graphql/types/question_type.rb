module Types
  class QuestionType < Types::BaseObject
    field :id, ID, null: false
    field :question_num, Integer, null: true
    field :text, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :quiz_id, Integer, null: false
    field :quiz, Types::QuizType, null: false
    field :possible_answers, [Types::PossibleAnswerType], null: true
  end
end
