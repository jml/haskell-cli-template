.PHONY: check clean docs format lint

EXE_NAME := {{ cookiecutter.project_name }}

LOCAL_BINARY_PATH = $(shell stack path --local-install-root)

check:
	stack test --fast

clean:
	stack clean
	stack --docker clean

docs:
	stack haddock

format:
	./scripts/hindent-everything

lint:
	hlint -q .

$(LOCAL_BINARY_PATH)/bin/$(EXE_NAME):
	stack build

bash_completion.sh: $(LOCAL_BINARY_PATH)/bin/$(EXE_NAME)
	stack exec $(EXE_NAME) -- --bash-completion-script $(LOCAL_BINARY_PATH)/bin/$(EXE_NAME) > bash_completion.sh
