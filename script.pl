#!/usr/bin/perl
#############################
######## Quick Start ########
#############################

#Perl @ blackhatethicalhacking.com
#Current authors, Chris "SaintDruG" Abou-Chabké

#This file is made to help people learn the perl programming language, as a part of
#Offensive Security.

#THE BIBLE OF PERL: https://perldoc.perl.org

@alphabet = ( 'a' .. 'z' );
$letter = $alphabet[int(rand($#alphabet + 1))];
print $letter; # prints random letter between a - z

# when learning any programming language, you must know 4 main things.
# 1) data types  2) syntax (the grammar of the language)  3) logic (how is it interpreted)
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

$server = IO::Socket::INET->new(LocalAddr => 'localhost', LocalPort => 1337, Proto => 'tcp', Listen => 5);

#Lets create a little daughter script in /tmp that will connect to the socket for us:
#Then we also learn to print multiline...

open(SCRIPTFILE, ">/tmp/script.pl");
print SCRIPTFILE <<'MULTILINE';
#!/usr/bin/perl

use IO::Socket::INET;
$socket = IO::Socket::INET->new(PeerAddr => 'localhost', PeerPort => 1337, Proto => 'tcp');
print $socket "Hey there over TCP how is it going!";
close($socket);
MULTILINE
close(SCRIPTFILE);

chmod(777, "/tmp/script.pl"); #Make it executable
system("/tmp/script.pl &"); #Run the script.pl we just created in background

$socketobj = $server->accept(); #Accept the connection from /tmp/script.pl

$line_of_data = <$socketobj>; #Read from socket

close($server);

print "Got this over TCP baby!: ".$line_of_data;

#Lets clean up after us:
unlink("/tmp/tempfile");
unlink("/tmp/script.pl");
