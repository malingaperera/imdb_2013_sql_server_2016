import os
from os.path import isfile, join, exists

imdb_data_location = '<data location>'
os.chdir(imdb_data_location)
only_files = [f for f in os.listdir('.') if isfile(join('.', f))]
if not exists('edited'):
    os.makedirs('edited')
for file in only_files:
    with open(file, "r", encoding='utf-8') as ori:
        with open(f"edited\{file}", "w", encoding='utf-8') as dest:
            for line in ori:
                dest.write(line.replace('\\\\', '#$#$').replace('\\"', '""').replace('#$#$', '\\'))