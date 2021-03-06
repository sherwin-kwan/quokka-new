module Types
  class QueryType < Types::BaseObject
    field :possible_answers,
          [Types::PossibleAnswerType],
          null: false,
          description: "Returns a list of possible answers for a question"
    
    field :questions,
          [Types::QuestionType],
          null: false,
          description: "Returns a list of questions"

    field :attempts,
          [Types::AttemptType],
          null: false,
          description: "Returns a list of attempts"

    field :quizzes,
          [Types::QuizType],
          null: false,
          description: "Returns a list of quizzes"

    field :quiz, Types::QuizType, null: true do
      description "get all questions and answers for a single quiz"
      argument :id, Integer, required: true 
    end

    field :user_answers,
          [Types::UserAnswerType],
          null: false,
          description: "Returns a list of user answers"

    def possible_answers
      PossibleAnswer.all
    end

    def questions
      Question.all
    end

    def attempts
      Attempt.all
    end

    def quiz(id:)
      Quiz.find(id)
    end

    def quizzes
      Quiz.all
    end

    def user_answers
      UserAnswer.all
    end
  end
end
