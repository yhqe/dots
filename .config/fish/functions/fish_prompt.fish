set -l nix_shell_info (
  if test -n "$IN_NIX_SHELL"
    echo -n "(nixsh) "
  end
)

function fish_prompt
	set -l last_status $status
	set -l stat
	if test $last_status -ne 0
		set stat (set_color red)"[$last_status]"(set_color normal)
	end

	string join '' -- (set_color blue) (prompt_pwd) (set_color normal) $stat ' > '
end

