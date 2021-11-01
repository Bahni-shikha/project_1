#!/usr/bin/perl

my ($x, $y, $z) = (1, 2, 3);  #using variables; $ denotes a variable
print "x=$x y=$y z=$z\n";
($x, $y) = ($y, $x);
print "x=$x y=$y\n";


#p8
my ($x, $y, $z) = (1, 2, 3, 4, 5);
print "x=$x y=$y z=$z\n";
my ($a, $b, $c) = (1, 2);
print "c=$c\n";
print length($c), "\n";
print $a + $c, "\n";

#p9.1
#!/usr/bin/perl
# array.pl


my @animals = ('cow', 'lizard', 'human');   #using array; @ denotes an array
print "1st animal in array is: $animals[0]\n";
print "2nd animal in array is: $animals[1]\n";
print "Entire animals array contains: @animals\n";
print "@animals[0]\n"; # bad

#9.2
push @animals, "fox"; #  push is a function of array; the array is now longer   
my $length = @animals;
print "The array now contains $length elements\n";
$length = @animals;


#p9.3
my ($first, $second) = @animals;
print "First two animals: $first $second\n";
my @animals2 = @animals; # make a copy of @animals
@animals = (); # assign @animals an empty list -> destroys contents
print "Animals array now contains:". @animals."\n";
print "Animals2 array still contains @animals2\n";


#p9.4
my $value = pop(@array);
pop(@array);
@animals = ('cat', 'dog', 'pig'); # needed because @animals was emptied
print "Animal at array position 1.2 is $animals[1.2]\n";
print "Animal at array position 1.7 is $animals[1.7]\n";
print "Animal at array position -1 is $animals[-1]\n";
print "array length = ", scalar(@animals), "\n";
print "Animal at array position 'foobar' is ", $animals["foobar"], "\n";

#p10.1

#!/usr/bin/perl
# stringarray.pl
my @gene_names = qw(unc-10 cyc-1 act-1 let-7 dyf-2);
my $joined_string = join(", ", @gene_names);
print "$joined_string\n";

#p10.2
my $dna = "aaaaGAATTCttttttGAATTCggggggg";
my $EcoRI = "GAATTC";
my @digest = split($EcoRI, $dna);
print "@digest\n";
my @dna = split("", $dna);
print "@dna\n";

#p11
#sorting

#p11.1
my @list = qw( c b a C B A a b c 3 2 1); # an unsorted list
my @sorted_list = sort @list;
print "default: @sorted_list\n";
@sorted_list = sort {$a <=> $b} @list;
print "numeric: @sorted_list\n";
@list = qw (2 34 -1000 1.6 8 121 73.2 0);
@sorted_list = sort {$b <=> $a} @list;
print "reversed numeric: @sorted_list\n";
@sorted_list = sort {$a <=> $b or uc($a) cmp uc($b)} @list;
print "combined: @sorted_list\n";

#p12

#p12.1
#looping
for (my $i = 0; $i < 10; $i = $i + 1) {
 print "$i\n";
 }
for (my $i = 50; $i >= 45; $i--) {print "$i\n"}
for (my $i = 0; $i < 100; $i += 10) {print "$i\n"}



#p12.3
my ($limit) = @ARGV;
my $sum = 0;
for (my $i = 1; $i <= $limit; $i++) {$sum += $i}
print "$sum\n";

#p12.4
my @animals = qw(cat dog cow);
my @sounds = qw(Meow Woof Moo);
for (my $i = 0; $i < @animals; $i++) {
print "$i) $animals[$i] $sounds[$i]\n";
}

#foreach loop
foreach my $animal (@animals) {
print "$animal\n";
 }
for my $i (0..5) {print "$i\n"}
my $x = 1;
while($x < 1000){
print "$x\n";
$x += $x;
}

=pod
while (0) {
 print "this statement is never executed because 0 is false\n";
 }
while (1) {
 print "this statement loops forever\n";
}
=cut
while (@animals) {
 my $animal = shift @animals;
print "$animal\n";
}

#do loops
do {
 print "hello\n";
} while (0);


#p12.7
#loop control
my $n = 0;
while (1) {
$n++;
redo if $n < 100;
last if $n > 200; # breaks out of while loop

my $prime = 1; # assumed true
for (my $i = 2; $i < $n; $i++) {
  if ($n % $i == 0) {
$prime = 0; # now known to be false
last; # breaks out of for loop
 }
}
 print "$n\n" if $prime;
}
