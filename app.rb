require_relative 'config/environment'

class App < Sinatra::Base
  get '/:name' do
    @user_name = params[:name]
    "#{@user_name.capitalize} is the best!"
  end

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    @reversed
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    return @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'
  @words = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
  @words
end
