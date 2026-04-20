#!/usr/bin/env python3
import sys
import os
import json

def main():
    # Accept a directory path as the first arg, otherwise default to ../docker
    if len(sys.argv) > 1:
        path = sys.argv[1]
    else:
        path = os.path.join(os.path.dirname(__file__), '..', 'docker')

    path = os.path.abspath(path)

    try:
        entries = [name for name in os.listdir(path)
                   if os.path.isdir(os.path.join(path, name)) and not name.startswith('.')]
    except Exception as e:
        print(json.dumps({"error": str(e)}))
        sys.exit(1)

    print(json.dumps({"dirs": sorted(entries)}))

if __name__ == '__main__':
    main()
