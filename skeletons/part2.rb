class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  legalMoves = ['r', 'p', 's']
  raise NoSuchStrategyError unless legalMoves.include? m1.downcase and legalMoves.include? m2.downcase
  wins = "rr", "rs", "pp", "pr", "ss", "sp"
  if wins.include? (m1 + m2).downcase
    return 0
  else
    return 1
  end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game[rps_result(game[0][1], game[1][1])]
end

def rps_tournament_winner(tournament)
  if isGame? tournament
    rps_game_winner(tournament)
  else
    rps_game_winner([ rps_tournament_winner(tournament[0]),
                      rps_tournament_winner(tournament[1]) ])
  end
end

def isGame?(game)
  return game[0][0].is_a?(String)
end
