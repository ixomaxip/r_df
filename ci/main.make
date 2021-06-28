main:

.PHONY: ci
rt:
	docker-compose build $@
down logs ps restart create:
	docker-compose $@
push pull:
	docker-compose $@ rt
log:
	docker-compose logs -f rt
bash:
	docker-compose run --rm rt bash
up:
	docker-compose up -d --force-recreate rt
