module User::Operation
  class Update < Trailblazer::Operation
    class Present < Trailblazer::Operation
      step Model(User, :find_by)
      step Contract::Build( constant: User::Contract::Form )
    end

    step Nested(Present)
    step Contract::Validate( key: :user )
    step Contract::Persist()
  end
end