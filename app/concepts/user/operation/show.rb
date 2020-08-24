module User::Operation
  class Show < Trailblazer::Operation
    step Model(User, :find_by)
    fail :not_found

    def not_found(ctx, **)
      ctx[:errors] = "User Not Found"
    end
  end
end