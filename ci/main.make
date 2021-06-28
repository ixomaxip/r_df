main:

.PHONY: ci
rt ci:
	docker-compose build $@
down logs ps restart create:
	docker-compose $@
push pull:
	docker-compose $@ rt ci
log:
	docker-compose logs -f rt
bash:
	docker-compose run --rm ci bash
up:
	docker-compose up -d --force-recreate ci
