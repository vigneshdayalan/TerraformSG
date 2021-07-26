plan:
	git pull
	git add -A
	git commit -m "ip updated"
	git push origin -u master
	terraform apply -auto-approve