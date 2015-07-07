ccrx-tools Cookbook
=============
Installs CCRX toolchain with license manager. Also adds the toolchain to path so that it can be accessed
anywhere.

Requirements
------------
Runs on windows. This cookbook is designed for the standalone installation of the CCRX toolchain, which renesas
only started releasing from V2.03.00 (Feb 2015).

Attributes
----------
````
default['ccrx-tools']['compiler_installer_path'] = "C:/vagrant/installers/CC-RX_V20300_setup.exe"
default['ccrx-tools']['license_manager_installer_path'] = "C:/vagrant/installers/LicenseManager_setup.exe"
default['ccrx-tools']['e1_driver_installer_path'] = "C:/vagrant/installers/E1USBDRIVER.exe"
````

Usage
-----
Just include `ccrx-tools` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ccrx-tools]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Li
