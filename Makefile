all: build

build:
	@echo 'AUR packages will not be builded'
	for dir in */; do \
		cd "$$dir" && \
		makepkg -sr --noconfirm --needed; \
		cd ..; \
	done


install:
	@echo 'AUR packages will not be installed'
	for dir in */; do \
		cd "$$dir" && \
		makepkg -i --noconfirm --needed; \
		cd ..; \
	done

clean:
	rm -rf */src/ */pkg/

.PHONY: all build install clean
