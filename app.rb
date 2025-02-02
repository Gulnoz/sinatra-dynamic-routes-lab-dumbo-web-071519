require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
   
end

get '/square/:number' do
    @num_to_square = params[:number].to_i
    @squared = @num_to_square * @num_to_square
    "#{@squared}"
end

get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = 0
    if @operation == 'add'
      @result = @num1 + @num2
    elsif @operation == 'subtract'
      @result = @num1 - @num2
    elsif @operation == 'multiply'
      @result = @num1 * @num2
    elsif @operation == 'divide'
      @result = @num1 / @num2
    end
  "#{@result}"
end
end