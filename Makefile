# Makefile for updating Inbound rules in all our Public Security Groups
#
.DEFAULT_GOAL := explain
explain:
	###     Welcome to ℂ𝕠𝕙𝕠𝕣𝕥 ℂ𝕠𝕣𝕖 Infrastructure
	###   _   _           _       _   _               ___       _                           _   ____        _           
	###  | | | |_ __   __| | __ _| |_(_)_ __   __ _  |_ _|_ __ | |__   ___  _   _ _ __   __| | |  _ \ _   _| | ___  ___ 
	###  | | | | '_ \ / _` |/ _` | __| | '_ \ / _` |  | || '_ \| '_ \ / _ \| | | | '_ \ / _` | | |_) | | | | |/ _ \/ __|
	###  | |_| | |_) | (_| | (_| | |_| | | | | (_| |  | || | | | |_) | (_) | |_| | | | | (_| | |  _ <| |_| | |  __/\__ \
	###   \___/| .__/ \__,_|\__,_|\__|_|_| |_|\__, | |___|_| |_|_.__/ \___/ \__,_|_| |_|\__,_| |_| \_\\__,_|_|\___||___/
	###        |_|                            |___/                                                                     

plan:
	git pull
	git add -A
	git commit -m "ip updated"
	git push origin -u master
	terraform apply -auto-approve