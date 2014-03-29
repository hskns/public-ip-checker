# Public IP Checker

By [Niko Hoskins](https://github.com/hskns).

## Description
**Public IP Checker** is just a simple bash script to check if the public ip has changed. The code block will be triggered if the public ip has changed since the script was last run. It will also get triggered if the server has been rebooted as the ip history file that this script uses to keep track of the public ip by default is stored in the `/tmp` directory.


## Installation

Make the appropriate changes to the permissions of the script:

```bash
chmod +x /root/scripts/check_ip.sh
```

Then add an entry to your crontab.

```bash
crontab -e
```

```bash
5 * * * * /bin/bash /root/scripts/check_ip.sh
```
In the above example I have the script run every 5 minutes.


## Usage / Configuration

Just edit the section below in the script with your own code to run.

```bash
# CODE TO RUN BELOW
curl http://<subdomain>.hopper.pw:<key>@ipv4.www.hopper.pw/nic/update




# CODE TO RUN ABOVE
```

If you wish to change where the ip history file is located, you can edit the `PUBLICIP` variable at the top of the script file.


## Information

In the example, curl loads an update url for the free open source dynamic dns service [hopper.pw](https://www.hopper.pw/).
Obviously this will fail as there is not a valid subdomain and key in the url.


### Known Issues

If you discover any bugs, feel free to create an issue on Gitlab fork and
send us a pull request.

[Issues List](https://github.com/hskns/Public-IP-Checker/issues).

## Authors

* Niko Hoskins (https://github.com/hskns)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

The MIT License (MIT)

Copyright (c) 2014 Niko Hoskins

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.