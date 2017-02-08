#!/usr/bin/perl
#codado por mutr0l
#hash decoder script
#API md5.darkbyte.ru

print <<banner;

                                             
███╗   ███╗██████╗ ███████╗██╗  ██╗ █████╗ ███████╗██╗  ██╗
████╗ ████║██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝██║  ██║
██╔████╔██║██║  ██║███████╗███████║███████║███████╗███████║
██║╚██╔╝██║██║  ██║╚════██║██╔══██║██╔══██║╚════██║██╔══██║
██║ ╚═╝ ██║██████╔╝███████║██║  ██║██║  ██║███████║██║  ██║
╚═╝     ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                           By mutr0l                        
                                              
banner

use LWP::UserAgent;
use HTTP::Response;
 
$hash=$ARGV[0] or
die "Use:\n".
"Criptografar: hashdecoder.pl <nome>\n".
"Descriptografar: hashdecoder.pl <hashmd5>\n";
 
 
if(api){
# API do md5.darkbyte.ru #
$agente = LWP::UserAgent->new();
$dec = $agente->get("http://md5.darkbyte.ru/api.php?q=$hash");
print "[API] resultado: \t\t".$dec->content()."\n";
} 
     
