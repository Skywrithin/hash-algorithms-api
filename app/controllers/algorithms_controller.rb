require_relative './application_controller.rb'
class AlgorithmsController < ApplicationController

    # READ (GET) (ALL)
    get '/algorithms' do
        algorithms = Algorithm.all
        
        # algorithms.to_json() whole instance
        algorithms.to_json()
    end

    get '/algorithms/names' do
        algorithms = Algorithm.all
        # algorithoms.to_json(only: [:name])
        algorithms.to_json(only: [:name])
    end

    
    # # READ (GET) (ONE) 
    # get '/algorithms/:id' do
    #     Algroithom.find(params[:id]).to_json
    # end 

    get '/algorithms/:name' do 
        algorithm = Algorithm.find_by(name: params[:name])
        algorithm.to_json()
    end

    # UPDATE (PATCH) (ONE)
    # NOTE => To check, use Postman to update our created Appointment with the following 
    # attribute:
    #   - vet_id: <last Vet id>
    #   - patient_id: <last Patient id>

    # DESTROY (DELETE) (ONE)
    # NOTE => To check, use Postman to delete our created Appointment. Confirm that it's
    # been deleted by navigating to 'localhost:9292/appointments/151'. What happens?
end 