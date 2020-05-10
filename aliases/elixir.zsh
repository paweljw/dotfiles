# Elixir

alias er='elixir'
alias imx='iex -S mix'
alias mdg='mix deps.get'

function mp() { mix phx.$1 }

alias mpr="mp routes"
alias mps="mp server"
alias mpc="mix compile"