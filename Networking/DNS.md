AdGuard DNS
If you want to block ads and trackers.
dns.adguard.com
Non-filtering server
If you don't want AdGuard DNS to block ads and trackers, or any other DNS requests.
dns-unfiltered.adguard.com
Family protection server
If you want to block adult content, enable safe search and safe mode options wherever possible, and also block ads and trackers.
dns-family.adguard.com
| Provider | Description | IPv4 | IPv6 | DNS over TLS |
| ----------- | ----------- | ----------- | ----------- | ----------- |
| [AdGuard](https://adguard-dns.io/en/public-dns.html) | Default: Blocks Ads & Trackers | 94.140.14.14 <br><br> 94.140.15.15 | 2a10:50c0::ad1:ff <br><br> 2a10:50c0::ad2:ff | dns.adguard.com/dns-query |
| [AdGuard](https://adguard-dns.io/en/public-dns.html) | Standard DNS: Non-Filtered | 94.140.14.140 <br><br> 94.140.14.141 | 2a10:50c0::1:ff <br><br> 2a10:50c0::2:ff | dns-unfiltered.adguard.com/dns-query |
| [AdGuard](https://adguard-dns.io/en/public-dns.html) | Family Filter: Safe Search Enabled, Block Adult Content, Block Ads, Block Trackers | 94.140.14.15 <br><br> 94.140.15.16 | 2a10:50c0::bad1:ff <br><br> 2a10:50c0::bad2:ff | dns-family.adguard.com/dns-query |
| [Cloudflare]([https://developers.cloudflare.com/1.1.1.1/setup/router/]) | Standard DNS: Non-Filtered | 1.1.1.1 <br><br> 1.0.0.1 | 2606:4700:4700::1111 <br><br> 2606:4700:4700::1001 | 1dot1dot1dot1.cloudflare-dns.com <br><br> one.one.one.one |
