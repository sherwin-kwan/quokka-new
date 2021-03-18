module Types
  class QueryType < Types::BaseObject
    field :questions,
          [Types::QuestionType],
          null: false,
          description: "Returns a list of questions"

    def questions
      Question.all
    end
  end
end
