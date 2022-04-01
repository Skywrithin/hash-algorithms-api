class ConstantsController < ApplicationController

    # READ (GET) (ALL)
    get '/constants' do
        constants = Constant.all
        # constants.to_json() whole instance
        constants.to_json
    end

    get '/constants/:id' do
        Constant.where(params[:id]).to_json
    end
end