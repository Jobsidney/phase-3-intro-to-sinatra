require 'sinatra'

class App < Sinatra::Base
set :default_content_type, 'application/json'
  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end
  get '/potato' do
    "<p>Boi 'em sticky</p>"
  end

  get '/dice' do
    dice_roll=rand(1..6)
    {
      roll: dice_roll,
      side: 'left',
    }.to_json
  end

  get '/dice' do
    dice_roll=rand(1..6)
    {
      roll: dice_roll,
      side: 'left',
    }.to_json
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { num1: num1,
      num2: num2,
      result: sum }.to_json
  end

  get '/games/:id' do

    games=[
      {id:1,
      name: 'call of duty'},
      {id:2,
      name: 'pubg'}
    ]
    game=games.find(params[:id])

    game.to_json
  end
  
end

run App
