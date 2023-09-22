+----------------------------------------------------------------------------------------+
|                                                                                        |
|  PPPPPPPPPPPPPPPPP                                        lllllll 555555555555555555   |
|  P::::::::::::::::P                                       l:::::l 5::::::::::::::::5   |
|  P::::::PPPPPP:::::P                                      l:::::l 5::::::::::::::::5   |
|  PP:::::P     P:::::P                                     l:::::l 5:::::555555555555   |
|    P::::P     P:::::P  eeeeeeeeeeee    rrrrr   rrrrrrrrr   l::::l 5:::::5              |
|    P::::P     P:::::Pee::::::::::::ee  r::::rrr:::::::::r  l::::l 5:::::5              | 
|    P::::PPPPPP:::::Pe::::::eeeee:::::eer:::::::::::::::::r l::::l 5:::::5555555555     |
|    P:::::::::::::PPe::::::e     e:::::err::::::rrrrr::::::rl::::l 5:::::::::::::::5    |
|    P::::PPPPPPPPP  e:::::::eeeee::::::e r:::::r     r:::::rl::::l 555555555555:::::5   |
|    P::::P          e:::::::::::::::::e  r:::::r     rrrrrrrl::::l             5:::::5  |
|    P::::P          e::::::eeeeeeeeeee   r:::::r            l::::l             5:::::5  |
|    P::::P          e:::::::e            r:::::r            l::::l 5555555     5:::::5  |
|  PP::::::PP        e::::::::e           r:::::r           l::::::l5::::::55555::::::5  |
|  P::::::::P         e::::::::eeeeeeee   r:::::r           l::::::l 55:::::::::::::55   |
|  P::::::::P          ee:::::::::::::e   r:::::r           l::::::l   55:::::::::55     |
|  PPPPPPPPPP            eeeeeeeeeeeeee   rrrrrrr           llllllll     555555555       |
|                                                                                        |
+----------------------------------------------------------------------------------------+

  _    ___   _   ___ _  _   ___ ___ ___ _      _  _  ___   ___  ___ ___ 
 | |  | __| /_\ | _ \ \| | | _ \ __| _ \ |    | \| |/ _ \ / _ \| _ ) __|
 | |__| _| / _ \|   / .` | |  _/ _||   / |__  | .` | (_) | (_) | _ \__ \
 |____|___/_/ \_\_|_\_|\_| |_| |___|_|_\____| |_|\_|\___/ \___/|___/___/


Perl5 is the standard installed in most Debian and Ubuntu based systems.

The feature perl is most known for, is its built-in regexp handling.
For example:

$string =~ s/DROP\sTABLE/No SQL injection attacks here, thanks!/sgi;

To use perl on a GNU/Linux distro, its just to start using it.
Its preinstalled and ready to go!

But if you want to go more advanced, I would recommend updating CPAN and
making it ready to use.
To start CPAN, you do:

sebastian@sebbe.eu:~$ sudo perl -MCPAN -e shell;
[sudo] password for sebastian:

You will be asked to configure it. The default is a good option for most, but
if there is something you dislike, you could always change that option.
Then you will appear at the CPAN prompt:

cpan[1]>

Then at this prompt, type:

cpan[1]> install CPAN

it will update to latest version.
Then when you are back at prompt, type:

cpan[2]> reload CPAN
(CPAN__unchanged__v2.18)(CPAN::Author__unchanged__v5.5002)(CPAN::CacheMgr__unchanged__v5.5002)
(CPAN::Complete__unchanged__v5.5001)(CPAN::Debug__unchanged__v5.5001)
(CPAN::DeferredCode__unchanged__v5.50)(CPAN::Distribution__unchanged__v2.18)
(CPAN::Distroprefs__unchanged__v6.0001)(CPAN::Distrostatus__unchanged__v5.5)
(CPAN::Exception::RecursiveDependency.....v5.5001)(CPAN::Exception::yaml_not_installed..v5.5)
(CPAN::FTP__unchanged__v5.5008)(CPAN::FTP::netrc__unchanged__v1.01)
(CPAN::HandleConfig__unchanged__v5.5008)(CPAN::Index__unchanged__v2.12)
(CPAN::InfoObj__unchanged__v5.5)(CPAN::LWP::UserAgent....v1.9601)
(CPAN::Module__unchanged__v5.5003)(CPAN::Prompt__unchanged__v5.5)
(CPAN::Queue__unchanged__v5.5002)(CPAN::Shell__unchanged__v5.5006)
(CPAN::Tarzip__unchanged__v5.5012)(CPAN::Version__unchanged__v5.5003)
11 subroutines redefined

cpan[3]>

At this time, you can either install one or more modules:

cpan[3]> install XXX:XXX

where XXX:XXX is the module name (CaSe SeNsItIvE!!!)

or just exit out if you dont need to use CPAN at this time:

cpan[3]> exit
Terminal does not support GetHistory.
Lockfile removed.
sebastian@sebbe.eu:~$

   ____        _      __      _____ __             __     ______      __             _       __
  / __ \__  __(_)____/ /__   / ___// /_____ ______/ /_   /_  __/_  __/ /_____  _____(_)___ _/ /
 / / / / / / / / ___/ //_/   \__ \/ __/ __ `/ ___/ __/    / / / / / / __/ __ \/ ___/ / __ `/ / 
/ /_/ / /_/ / / /__/ ,<     ___/ / /_/ /_/ / /  / /_     / / / /_/ / /_/ /_/ / /  / / /_/ / /  
\___\_\__,_/_/\___/_/|_|   /____/\__/\__,_/_/   \__/    /_/  \__,_/\__/\____/_/  /_/\__,_/_/   
                                                                                             


#!/usr/bin/perl
#############################
######## Quick Start ########
#############################

#Perl @ irc.anonops.com port 6697
#Current authors, SebastianNielsen

#This file is made to help people learn the perl programming language, as a part of
#opspeakcode, a legal and productive op.
#Guys, there is nothing illegal about programming perl, SO POST CODE WHEN GIVING
#QUESTIONS!!! READ DOCS!!!!! DISCUSS OPENLY!!!!

#THE BIBLE OF PERL: https://perldoc.perl.org

@alphabet = ( 'a' .. 'z' );
$letter = $alphabet[int(rand($#alphabet + 1))];
print $letter; # prints random letter between a - z

# when learning any programming language, you must know 4 main things.
# 1) data types  2) syntax (the grammar of the language)  3) logic (how is it interpretted)
# 4) Data structures (modules, classes, etc)
# then, you must understand how all 4 of these things are inter-connected. Once you learn these,
# you can go to another language and learn it much faster
# than you did your first language, because the concepts will already be familiar.

#Variables are just used.
#For example:
$a = 12;

#To import a library, use the "use" keyword:
use Convert::Base32 qw(decode_base32); #qw means quote the content, like 'decode_base32'.
#this loads the Convert::Base32 module and imports the decode_base32 function in main namespace.

#To install Convert::Base32, refer to first part of this document, write "install Convert::Base32"
#in CPAN prompt.

#Important built-in functions:
length($a);
int($a);

#Variables and escapes are expanded in double-quoted strings but not single-quoted strings;

print 'Nice variable: $a\n';
print "Nice variable: $a\n";

#Lets print some base32 encoded content to a file, so we both learn how to write,
#append and read to files to the system, and also gets to use the decode_base32 module we just
#imported above, but also learn how to concatenate strings, which are done with the . character.

#Common mistake: There should be NO COMMA between the filehandle and content when print'ing to
#a filehandle. A filehandle can also be a handle that refers to a internet socket when

open(FILEHANDLE, ">/tmp/tempfile");
print FILEHANDLE "NBSXSIDUNBSXEZJMEBESA53SNF2HIZLOEBQSA3TJMNSSA5DFPB2CAZTJNRSQ\n";
close(FILEHANDLE);
open(ANOTHERTHING, ">>/tmp/tempfile");
print ANOTHERTHING "JZUWGZJAMFYHAZLOMQQSAQLMONXSA53SNF2GKIDXNFWGYIDCMUQHEZLQNRQWGZLEEBUW4IDUNBUXGIDUMV4HILROFY\n";
close(ANOTHERTHING);

open(GONNAREAD, "/tmp/tempfile");
@filecontent = <GONNAREAD>;
close(GONNAREAD);

foreach $line (@filecontent) {
  $line =~ s/\n//sgi; #Delete any newlines from $line
  $decoded_line = decode_base32($line);
  $decoded_line =~ s/write/read/gi;
  print "One line of the file, decoded: ".$decoded_line."\n";
}

#Backticks are used to execute system commands and wait for reply, here we do it uppercase aswell:
$commandresult = `whoami`;
print "I am: ".uc($commandresult);


No_reply("Hey","There");

$data = I_gonna_reply("With what?");
print "I got a reply: ".$data."\n";

#Functions:
sub No_reply() {
  $first_argument = $_[0];
  $second_argument = $_[1];
  print $first_argument."--".$second_argument."\n";
}

sub I_gonna_reply() {
  $first_argument = $_[0];
  print "Gonna send back this to caller: ".$first_argument."\n";
  return $first_argument;
}


#
#    _   __     __                      __   _
#   / | / /__  / /__      ______  _____/ /__(_)___  ____ _
#  /  |/ / _ \/ __/ | /| / / __ \/ ___/ //_/ / __ \/ __ `/
# / /|  /  __/ /_ | |/ |/ / /_/ / /  / ,< / / / / / /_/ /
#/_/ |_/\___/\__/ |__/|__/\____/_/  /_/|_/_/_/ /_/\__, /
#                                                /____/
#

use IO::Socket::INET;

$server = IO::Socket::INET->new(LocalAddr => 'localhost', LocalPort => 1234, Proto => 'tcp', Listen => 5);

#Lets create a little daughter script in /tmp that will connect to the socket for us:
#Then we also learn to print multiline...

open(SCRIPTFILE, ">/tmp/script.pl");
print SCRIPTFILE <<'MULTILINE';
#!/usr/bin/perl

use IO::Socket::INET;
$socket = IO::Socket::INET->new(PeerAddr => 'localhost', PeerPort => 1234, Proto => 'tcp');
print $socket "Hey there over TCP!";
close($socket);
MULTILINE
close(SCRIPTFILE);

chmod(777, "/tmp/script.pl"); #Make it executable
system("/tmp/script.pl &"); #Run the script.pl we just created in background

$socketobj = $server->accept(); #Accept the connection from /tmp/script.pl

$line_of_data = <$socketobj>; #Read from socket

close($server);

print "Got this over TCP: ".$line_of_data;

#Lets clean up after us:
unlink("/tmp/tempfile");
unlink("/tmp/script.pl");