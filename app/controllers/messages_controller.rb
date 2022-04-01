
class MessagesController < ApplicationController

    # READ (GET) (ALL)
    get '/messages' do
        messages = Message.all

        # algorithms.to_json() whole instance
        messages.to_json(
            include: { algorithm: {only: [:name]}}
        )
    end

    delete '/messages/:id' do
        message = Message.find(params[:id])
        message.destroy
        message.to_json
    end

    post '/messages' do
        digest = nil
            case params[:algorithm]
            when 'Sha256'
                digest = Digest::SHA256.hexdigest params[:message]
            end

        algorithm = Algorithm.find_by(name: params[:algorithm])
        message = Message.create(
            message: params[:message],
            digest: digest,
            algorithm_id: algorithm[:id]
        )
        message.to_json
    end
end 


    # algorithm_id: Algorithm.find(params[:algorithm]).id
    # get '/algorithms/names' do
    #     algorithms = Algorithm.all
        
    #     # algorithoms.to_json(only: [:name])
    #     algorithms.to_json(only: [:name])
    # end

    # # # READ (GET) (ONE) 
    # # get '/algorithms/:id' do
    # #     Algroithom.find(params[:id]).to_json
    # # end 

    # get '/algorithms/:name' do 
    #     algorithm = Algorithm.find_by(name: params[:name])
    #     algorithm.to_json()
    # end

    # UPDATE (PATCH) (ONE)
    # NOTE => To check, use Postman to update our created Appointment with the following 
    # attribute:
    #   - vet_id: <last Vet id>
    #   - patient_id: <last Patient id>

    # DESTROY (DELETE) (ONE)
    # NOTE => To check, use Postman to delete our created Appointment. Confirm that it's
    # been deleted by navigating to 'localhost:9292/appointments/151'. What happens?