# Setup script

import json

def main():

    with open('/usr/local/etc/crun_config.json', 'w') as f:
        json.dump(getUser(), f)

def getUser():

    # Get input
    print('Enter SSO domain name or Tyler Technologies email')
    user = input('User: ').strip()

    # Format properly
    user = user.replace('@tylertech.com', '')
    user = user.replace('.', '')

    return {'user' : user}


if __name__ == '__main__':
    main()