import json

# a_file = open("terraform.tfvars.json", "r")
# json_object = json.load(a_file)
# a_file.close()
# print(json_object)

# json_object["sg_ingress_rules"]["Vignesh"] = 101

# a_file = open("terraform.tfvars.json", "w")
# json.dump(json_object, a_file,indent=4)
# a_file.close()
# print(json_object)


# function to add to JSON
def update_jsonip(userdetails, filename='terraform.tfvars.json'):
    with open(filename,'r+') as file:
        file_data = json.load(file)
        print(file_data)
        file_data["sg_ingress_rules"][userdetails["name"]] = userdetails["ip"]
        file.seek(0)
        json.dump(file_data, file, indent = 4,)
 
    # python object to be appended
# sss
userdetails = {"name":"Vignesh","ip":"200"}  
update_jsonip(userdetails)