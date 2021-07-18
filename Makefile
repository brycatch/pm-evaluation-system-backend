local-build:
	docker-compose -f docker-compose.yml build

local-up:
	docker-compose -f docker-compose.yml up -d

local-down:
	docker-compose -f docker-compose.yml down