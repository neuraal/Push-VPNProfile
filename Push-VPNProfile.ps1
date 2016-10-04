<#
 Cisco AnyConnect // Push VPN Profile
 Written By: Jack A. Chrysostomou

 The great questions of the day will not be
 settled by means of speeches and majority
 decisions but by iron and blood.
              -Otto von Bismarck

Changelog_________________________________________
10.3.16 - JC - 1.0.0 Created Proof of Concept
10.3.16 - JC - 1.0.1 Add Boiler Plate / Clean Code
#>

# Sets $dir as path to 'Cisco AnyConnect' profile directory
$dir = "$env:programdata\Cisco\Cisco AnyConnect Secure Mobility Client\Profile\"

# Delete all .XML Files in the Profile directory
get-childitem "$dir" -include *.xml -recurse | foreach ($_) {remove-item $_.fullname}

# Copy vpn profile 'abcvpn.xml' to $dir
copy-item "$PSScriptRoot\abcvpn.xml" -destination "$dir"
