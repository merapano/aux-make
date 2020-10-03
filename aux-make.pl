#!/usr/bin/perl

$mybibdata = "/home/satoshi/anthrop/biblio/phil,/home/satoshi/anthrop/biblio/anthrop,/home/satoshi/anthrop/biblio/neighbor,/home/satoshi/anthrop/biblio/ntt,/home/satoshi/anthrop/biblio/satoshi,/home/satoshi/anthrop/biblio/sci,/home/satoshi/anthrop/biblio/asia";

open(OUTF, "> bib.aux" ) || die "Cannot open bib.aux\n";
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
close(OUTF)
    

