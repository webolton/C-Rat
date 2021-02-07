MODULE := crat

spec:
	export CRAT_ENV=test; rspec

.PHONY: spec
