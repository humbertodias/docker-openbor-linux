build:
	docker build . -t openbor-linux

remote:
	remote-viewer spice://localhost:5900

run-spice:
	docker run --rm --name openbor \
	-p 5900:5900 \
	-v $(PWD)/shared:/shared \
	-v /run/user/1000/pulse:/run/user/1000/pulse \
	openbor-linux

exec-openbor:
	docker exec -ti openbor \
	bash -c "cd /shared/OpenBOR && ./OpenBOR"

run: 
	$(MAKE) run-spice &
	sleep 3
	$(MAKE) remote &
	$(MAKE) exec-openbor

stop:
	docker rm openbor -f
