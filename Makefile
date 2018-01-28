# This Makefile helps on building the production container image
# for a base Linux distro with Java 8 JRE Unlimited Cryptography

# Container name
container_name = identifiersorg/linux-java8

# Default target
all: clean container_production_push

container_production_build:
	@echo "<===|DEVOPS|===> [BUILD] Production container $(container_name)"
	@docker build -t $(container_name) .

container_production_push: container_production_build
	@echo "<===|DEVOPS|===> [PUBLISH]> Production container $(container_name)"
	@docker push $(container_name)

clean:
	@echo "<===|DEVOPS|===> [CLEAN] Cleaning the space"

.PHONY: all clean container_production_build container_production_push
