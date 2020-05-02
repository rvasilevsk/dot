alias fdext='echo "fd --extension"; fd --extension'
alias fdl='echo "fd -L (== --follow == symlinks)"; fd -L'
alias fdh='echo "fd -H (== --hidden)"; fd -H'

# - Find files matching the given pattern in the current directory:
#   fd {{pattern}}

# - Find files that begin with "foo":
#   fd {{'^foo'}}

# - Find files with a specific extension:
#   fd --extension {{txt}}

# - Find files in a specific directory:
#   fd {{pattern}} {{path/to/dir}}

# - Include ignored and hidden files in the search:
#   fd --hidden --no-ignore {{pattern}}
