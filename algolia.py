from algoliasearch.search_client import SearchClient
from os import getenv
import json

API_KEY = getenv('API_KEY', 'none')
APP_ID = getenv('APP_ID', 'none')
INDEX_NAME = getenv('INDEX_NAME', 'none')
INDEX_FILE = getenv('INDEX_FILE', 'none')

client = SearchClient.create(APP_ID, API_KEY)
index = client.init_index(INDEX_NAME)

with open(INDEX_FILE, 'r') as f:
    d = json.load(f)
    index.replace_all_objects(d)
