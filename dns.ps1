param($h,$d)
1..254|%{
Resolve-DnsName -DnsOnly "$h.$_" -Server "$d" -ErrorAction Ignore
}
