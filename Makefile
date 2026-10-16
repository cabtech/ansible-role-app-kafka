.PHONY: clean lint

lint: .lintyaml .lintansible

.lintansible: */*.yml .config/ansible-lint
	uv run ansible-lint --config-file=.config/ansible-lint
	@touch $@

.lintyaml: */*.yml .config/yamllint
	uv run yamllint --config-file=.config/yamllint .
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

clean:
	@/bin/rm -f .lint*
