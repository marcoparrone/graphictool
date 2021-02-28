docker=podman

build:
	$(docker) build -t marcoparrone/graphictool .

test: 
	$(docker) run --rm -it marcoparrone/graphictool convert

clean:
	$(docker) rmi localhost/marcoparrone/graphictool

all: build
