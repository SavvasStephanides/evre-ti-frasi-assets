docker := docker run -it --rm -v ${PWD}:/evre-ti-frasi -w /evre-ti-frasi -p 5173:5173 node:23-alpine3.19

run:
	docker run --rm --name evretifrasi-assets -v ${PWD}/src:/usr/share/nginx/html:ro -d -p 9000:80 nginx:1.29.0-alpine

logs:
	docker logs -f evretifrasi-assets
	
stop:
	docker stop evretifrasi-assets

push-changes:
	$(docker) sh -c "apk add git && git config --global user.email ${email} && git add -A && git commit -m '${message}' && git push"