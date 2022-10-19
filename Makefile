PLANTUML_VERSION ?= 1.2022.8

docs-install:
		cd ./assets && curl -L -o "plantuml.jar" "https://github.com/plantuml/plantuml/releases/download/v$(PLANTUML_VERSION)/plantuml-$(PLANTUML_VERSION).jar"

docs-lint:
		java -jar ./assets/plantuml.jar -nbthread auto -checkonly "$(realpath ./src/docs)/**/*.puml"

docs-build:
		java -Dapple.awt.UIElement=true -jar ./assets/plantuml.jar -Sdpi=300 -nbthread auto -tsvg -o "$(realpath ./docs)" "$(realpath ./src/docs)/**/*.puml"
		java -Dapple.awt.UIElement=true -jar ./assets/plantuml.jar -Sdpi=300 -nbthread auto -tpng -o "$(realpath ./docs)" "$(realpath ./src/docs)/**/*.puml"
