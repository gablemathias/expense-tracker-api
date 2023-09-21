require_relative '../../../app/api.rb'

module ExpenseTracker
  RSpec.describe API do
    describe 'POST /expenses' do # This will handle the success cases
      context 'when the expense is successfully recorded' do
        it 'returns the expense id'
        it 'responds with a 200(OK)'
      end
      
      context 'when the expense fails validation' do
        it 'returns an error message'
        it 'responds with a 422 (Unprocessable entity'
      end
    end
  end
end
