run: run-vote-app run-result-app run-worker-app

run-redis:
	docker run -d --name=redis redis

run-db:
	docker run -d --name=db postgres:9.4

run-vote-app: run-redis
	docker run -d --name=vote -p 5000:80 --link redis:redis dockersamples/examplevotingapp_vote

run-result-app: run-db
	docker run -d --name=result -p 5001:80 --link db:db dockersamples/examplevotingapp_result

run-worker-app: run-db run-redis
	docker run -d --name=worker --link redis:redis --link db:db dockersamples/examplevotingapp_worker

clean:
	-docker rm -f redis
	-docker rm -f db
	-docker rm -f vote
	-docker rm -f result
	-docker rm -f worker

