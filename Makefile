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
	@echo FETCHING LATEST STATE FILE FROM GITHUB
	git pull
	py jsonupdate.py --name=${name}
	terraform apply -auto-approve
	git add -A
	git commit -m "ip updated"
	git push origin -u master
