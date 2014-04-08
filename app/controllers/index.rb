get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/games' do
  erb :index
end

post '/games' do
  @player1 = Players.new(name: params[:player1])
  @player2 = Players.new(name: params[:player2])
  if @player1.save && @player2.save
    @players = true
    @game = Games.create
    # @winner = nil

    Rounds.create(game_id: @game.id, player_id: @player1.id)
    Rounds.create(game_id: @game.id, player_id: @player2.id)
    @round_id = Rounds.last.id

    erb :index
  else
    @players = false
    erb :index
  end
end

get '/games/winner' do
  raise params.inspect
  erb :winner
end

get '/games/:id' do
  @game = game_id
end

post '/games/winner' do
  # @round = Rounds.find(params[:round_id])

  raise params.inspect
  # @winner = Players.find_by(name: params[:winner] )
  # puts @winner.inspect
  # puts "-------------------------"
end
