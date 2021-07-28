import json
import argparse, sys
from requests import get

parser=argparse.ArgumentParser()

parser.add_argument('--name', help='name of the user for which ip updated')

args=parser.parse_args()
filename='terraform.tfvars.json'

ip = get('https://ipapi.co/ip/').text
print(args.name)
with open(filename,'r+') as file:
        file_data = json.load(file)
        file_data["sg_ingress_rules"][args.name.lower()] = ip
        file.seek(0)
        json.dump(file_data, file, indent = 4)
