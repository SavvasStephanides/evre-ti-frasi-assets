run:
	docker run --rm --name evretifrasi-assets -v ${PWD}/src:/usr/share/nginx/html:ro -d -p 9000:80 nginx:1.29.0-alpine

logs:
	docker logs -f evretifrasi-assets
	
stop:
	docker stop evretifrasi-assets