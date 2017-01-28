function iexwrap

  set version (elixir -v | tail -1 | cut -d' ' -f2)

  set stdlib ~/.config/iexwrap/stdlib_$version

  if test -f '.completions'
    set user_completions '--file' '.completions'
  end

  rlwrap --always-readline \
         --break-chars \n  \
         --file "$stdlib" $user_completions \
         --histsize 1000   \
         --extra-char-after-completion '' \
         -t 'dumb' \
         --multi-line \
         iex \
         -e 'IEx.configure(default_prompt: ">")' \
         $argv
end
