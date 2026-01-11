help:
	@echo "Generate HTML from a Bikeshed source document:"
	@echo
	@echo " [index.html]"
	@echo
	@echo "  make index    Generate index.bs"
	@echo
	@echo "  And, choose one of:"
	@echo
	@echo "  make spec     Generate index.html from index.bs (with docker)"
	@echo "  make watch    Generate index.html each time the source index.bs changes (with docker)"
	@echo "  make web      Generate index.html (without docker)"
	@echo 

index:
	@ docker run --rm --env-file=.env -v `pwd`:/app/run -it hochstenbach/n3builtins-gen_bs:v0.0.1
	
spec:
	@ docker run --rm --platform linux/amd64 -v "`pwd`:/spec" -w /spec netwerkdigitaalerfgoed/bikeshed:1.7.0

watch:
	@ docker run --rm --platform linux/amd64 -v "`pwd`:/spec" -w /spec netwerkdigitaalerfgoed/bikeshed:1.7.0 sh -c "bikeshed watch"

web:
	@ curl -s https://api.csswg.org/bikeshed/ -F file=@index.bs -F force=1 > index.html	

valid:
	@ find src -type f -name '*.n3' | xargs -n 1 ./example_tester.sh 

# Only for local development

docker-image:
	@ docker build . -t hochstenbach/n3builtins-gen_bs:v0.0.1

docker-publish:
	@ docker push hochstenbach/n3builtins-gen_bs:v0.0.1