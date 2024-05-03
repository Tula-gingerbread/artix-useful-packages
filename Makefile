all: build

build:
	for dir in */; do \
        cd "$$dir" && \
        makepkg -sr --noconfirm --needed; \
        cd ..; \
    done


install:
    for dir in */; do \
        cd "$$dir" && \
        makepkg -i --noconfirm --needed; \
        cd ..; \
    done

clean:
    rm -rf */src/ */pkg/


.PHONY: all build install clean
