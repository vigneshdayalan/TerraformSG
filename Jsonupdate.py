import json
import argparse, sys
from requests import get
import getpass

parser=argparse.ArgumentParser()

parser.add_argument('--name', help='name of the user for which ip updated')
args=parser.parse_args()

systemusername =getpass.getuser()

filename='terraform.tfvars.json'

ip = get('https://ipapi.co/ip/').text

with open(filename,'r+') as file:
        file_data = json.load(file)
        if args.name == "":
            file_data["sg_ingress_rules"][systemusername.lower()] = ip
        else:
            file_data["sg_ingress_rules"][args.name.lower()] = ip
        file.seek(0)
        json.dump(file_data, file, indent = 4)
