# iexwrap

iexwrap is a simple fish shell function and standard library completion generator for working with Elixir's iex through [rlwrap][rlwrap].

Using rlwrap provides readline keybindings and history. Tab completion for the stdlib is stored for an Elixir version at, for example, `~/.config/iexwrap/stdlib_1.4.0`. Additional completions can be placed, one per line, in a file called `.completions`. One downside is no (automatic) completion for the current project. This may be possible. I haven't looked in to it.

Completions are shown without arity and alphabetically by column order, not row order. I find this makes them easier to read.

Only for development use.

Generate standard library completions for the current version of Elixir:

	elixir stdlib.exs

`iexwrap.fish` goes in  `~/.config/fish/functions/`

Run…

	iexwrap


[rlwrap]: https://github.com/hanslub42/rlwrap