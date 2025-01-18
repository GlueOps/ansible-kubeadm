import yaml
import json
def yaml_file_to_json_file(yaml_file_path, json_file_path):
    with open(yaml_file_path, 'r') as yaml_file:
        yaml_data = yaml.safe_load(yaml_file)
    with open(json_file_path, 'w') as json_file:
        json.dump(yaml_data, json_file, indent=2)
yaml_file_path = 'input.yaml'
json_file_path = 'output.json'
yaml_file_to_json_file(yaml_file_path, json_file_path)