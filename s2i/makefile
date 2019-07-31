image := s2i-demo:latest
base-image := ibotty/s2i-nginx
src := src

build:
	s2i build $(src) $(base-image) $(image)

run:
	docker run -p 8080:8080 $(image)

inspect:
	docker run -it $(image) bash

clean:
	-docker image rm $(image)
