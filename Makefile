.PHONY: lint
lint: .ylint .alint

.alint: */*.yml .config/ansible-lint
	uv run ansible-lint --config-file=.config/ansible-lint
	@touch $@

.ylint: */*.yml .yamllint
	uv run yamllint .
	@touch $@

# --------------------------------

init-uv:
	uv python install 3.14
	uv init
	uv python pin python3.14
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

update-uv:
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

# --------------------------------

.PHONY: clean
clean:
	@/bin/rm -f .alint .ylint
