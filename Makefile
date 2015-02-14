PYTHON_DIRS := 3.4
ONBUILD_DIRS := 3.4/onbuild

.PHONY: all clean $(PYTHON_DIRS) $(ONBUILD_DIRS)

all: $(PYTHON_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(PYTHON_DIRS)

$(PYTHON_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)