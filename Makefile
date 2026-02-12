.PHONY: serve new init

serve:
	hugo serve -D --disableFastRender


review:
	@read -p "What do you want to call the new review? " name && \
	hugo new content --kind review review/$$(echo "$$name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')


post:
	@read -p "What do you want to call the new post? " name && \
	hugo new content --kind post posts/$$(echo "$$name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')


init:
	git submodule update --init
