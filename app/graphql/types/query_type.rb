module Types
  class QueryType < Types::BaseObject
    field :quizzes,
          [Types::QuizType],
          null: false,
          description: "Returns a list of quizzes"

    def quizzes
      Quiz.all
    end
  end
end
