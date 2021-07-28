# Makefile for updating Inbound rules in all our Public Security Groups
#
.DEFAULT_GOAL := explain
explain:
	#            _ _                 _____ _____
	#      /\   | | |               |_   _|  __ \
	#     /  \  | | | _____      __   | | | |__) |
	#    / /\ \ | | |/ _ \ \ /\ / /   | | |  ___/
	#   / ____ \| | | (_) \ V  V /   _| |_| |
	#  /_/    \_\_|_|\___/ \_/\_/   |_____|_|

plan:
	@echo ***FETCHING LATEST CHANGES FROM GITHUB***
	git pull
	@echo ***FETCHING USER PUBLIC IP***
	py jsonupdate.py --name=${name}
	@echo ***DEPLOYING TO AWS***
	terraform apply -auto-approve
	@echo ***DEPLOYMENT DONE***
	@echo ***COMMITING CHANGES TO GITHUB***
	git add -A
	git commit -m "ip updated"
	git push origin -u master
	@echo ***IP ADDED TO ALL SERVICES***
