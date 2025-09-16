param($network, $server)

for ($i = 1 ; $i -lt 255 ; $i++){
    $ipadd = ($network + "." + $i)
    $hname = Resolve-DNSName -DnsOnly $ipadd -server $Server -ErrorAction Ignore
    if ($null -ne $hname) {
        Write-Host $ipadd $hname.NameHost
    }

}
