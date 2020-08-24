module User::Operation
  class Index < Trailblazer::Operation
    step :fetch_users

    def fetch_users(ctx, **)
      ctx[:model] = User.all
    end
  end
end