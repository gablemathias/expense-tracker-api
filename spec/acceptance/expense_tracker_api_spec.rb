# It should faithfully save the expenses we record
require_relative '../../app/api.rb'
require 'rack/test'
require 'json'

module ExpenseTracker
  RSpec.describe 'Expense Tracker API' do
    include Rack::Test::Methods

    def app
      ExpenseTracker::API.new
    end

    it 'records submitted expenses' do
      coffee = {
        'payee'  => 'Starbucks',
        'amount' => 5.75,
        'date'   => '2017-06-10'
      }

      post '/expenses', JSON.generate(coffee)
      expect(last_response.status).to eq(200)
      # posting key-value pairs (hash) to the <expenses> end-point
      # sending and receiving data in JSON format.
      # JSON objects convert to Ruby hashes with string keys.
    end
  end
end
