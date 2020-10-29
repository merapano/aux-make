#!/usr/bin/perl

use Getopt::Long 'GetOptions';
# use Getopt::Long;

my $mybibdata = "/home/satoshi/anthrop/biblio/phil,/home/satoshi/anthrop/biblio/anthrop,/home/satoshi/anthrop/biblio/neighbor,/home/satoshi/anthrop/biblio/ntt,/home/satoshi/anthrop/biblio/satoshi,/home/satoshi/anthrop/biblio/sci,/home/satoshi/anthrop/biblio/asia";

my $auxname = "bib.aux";

GetOptions(
'bibdata=s'  => \$mybibdata,
'output=s' => \$auxname
);

open(OUTF, "> $auxname" ) || die "Cannot open $auxname\n";
print OUTF "\\bibstyle{chicago}\n";
while(@ARGV){
    $fname=shift;
    open(IN, $fname) || die "Cannot read $fname\n";
    while(<IN>){
        if(/\[@([^:\]]+)[:\]]/) {
            print OUTF "\\citation{$1}\n";
        }
        if(/\[\[bib\/([^\]]+)\]\]/) {
            print OUTF "\\citation{$1}\n";
        }
    }
    close(IN);
}
print OUTF "\\bibdata{$mybibdata}\n";
close(OUTF);
    

sub help {
    print "--bibdata bibfilenames --output auxname\n";
    print "-b=bibfilenames -o=auxname\n"
}
