# Using makefile to generate commands that are associated with other commands

# Do both go mod tidy & vendor
tidy:
		go mod tidy
		go mod vendor