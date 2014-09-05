#!/usr/bin/perl
use warnings;
use strict;
use Tkx;
#binary.plx

#Declare variables
my $bin;
my $id;
my $color;
my $lastx;
my $lasty;

#Create Font
Tkx::font_create("TitleFont", -family => "Arial", -size => 16, -weight => "bold");
Tkx::font_create("HeaderFont", -family => "Arial", -size => 14);

#Create widget
my $wid = Tkx::widget->new(".");
$wid->g_wm_title("Counting Binary");
$wid->g_grid_columnconfigure(0, -weight => 1);
$wid->g_grid_rowconfigure(0, -weight => 1);
my $top = $wid->new_ttk__label(-text=> "Learning the Basics of Binary", -font => "TitleFont");
$top->g_grid(-column=>0, -row=> 0, -pady => 15);

#Create Notebook and Tabs
my $note = $wid->new_ttk__notebook;
my $page1 = $note->new_ttk__frame();
my $page2 = $note->new_ttk__frame();
my $page3 = $note->new_ttk__frame();
my $page4 = $note->new_ttk__frame();
my $page5 = $note->new_ttk__frame();
my $page6 = $note->new_ttk__frame();
my $page7 = $note->new_ttk__frame();
my $page8 = $note->new_ttk__frame();
my $page9 = $note->new_ttk__frame();
my $page10 = $note->new_ttk__frame();

$note->add($page1, -text => "Basic");
$note->add($page2, -text=> "Basic Exercise");
$note->add($page3, -text => "Adding");
$note->add($page4, -text => "Adding exercise");
$note->add($page5, -text => "Subtracting");
$note->add($page6, -text => "Subtracting exercise");
$note->add($page7, -text => "Multiplying");
$note->add($page8, -text => "Multiplying exercise");
$note->add($page9, -text => "Dividing");
$note->add($page10, -text => "Dividing exercise");
$note->g_grid(-column => 0, -row => 1, -sticky => "nwes");

#Create Images
Tkx::image_create_photo("zero1img", -file => "zero1.gif");
Tkx::image_create_photo("one1img", -file => "one1.gif");
Tkx::image_create_photo("zero2aimg", -file => "zero2a.gif");
Tkx::image_create_photo("zero2bimg", -file => "zero2b.gif");         
Tkx::image_create_photo("one2aimg", -file => "one2a.gif");
Tkx::image_create_photo("one2bimg", -file => "one2b.gif");
Tkx::image_create_photo("zero3img", -file => "zero3.gif");
Tkx::image_create_photo("one3img", -file => "one3.gif");
Tkx::image_create_photo("tenimg", -file => "ten.gif");
Tkx::image_create_photo("zero4img", -file => "zero4.gif");
Tkx::image_create_photo("one4img", -file => "one4.gif");
Tkx::image_create_photo("zero5img", -file => "zero5.gif");
Tkx::image_create_photo("one5img", -file => "one5.gif");
Tkx::image_create_photo("zero6img", -file => "zero6.gif");
Tkx::image_create_photo("one6img", -file => "one6.gif");
Tkx::image_create_photo("zero7img", -file => "zero7.gif");
Tkx::image_create_photo("one7img", -file => "one7.gif");
Tkx::image_create_photo("zero8img", -file => "zero8.gif");
Tkx::image_create_photo("one8img", -file => "one8.gif");
Tkx::image_create_photo("zero9img", -file => "zero9.gif");
Tkx::image_create_photo("one9img", -file => "one9.gif");
Tkx::image_create_photo("zero10img", -file => "zero10.gif");
Tkx::image_create_photo("one10img", -file => "one10.gif");

#####Tab1#####
#Title
my $title1 = $page1->new_ttk__label( -text => "Basic Binary Values", -font => "TitleFont")->g_grid(-column => 1, -row => 0, -columnspan => 4, -pady => 20);

#Buttons
my $b0 = $page1->new_ttk__button(-width => 5, -text => 0, -command => sub {b0()});
$b0->g_grid(-column => 1, -row => 2);
my $b1 = $page1->new_ttk__button(-width => 5, -text => 1, -command => sub {b1()});
$b1->g_grid(-column => 2, -row => 2);
my $b2 = $page1->new_ttk__button(-width => 5, -text => 2, -command => sub {b2()});
$b2->g_grid(-column => 3, -row => 2);
my $b3 = $page1->new_ttk__button(-width => 5, -text => 3, -command => sub {b3()});
$b3->g_grid(-column => 4, -row => 2);
my $b4 = $page1->new_ttk__button(-width => 5, -text => 4, -command => sub {b4()});
$b4->g_grid(-column => 1, -row => 3);
my $b5 = $page1->new_ttk__button(-width => 5, -text => 5, -command => sub {b5()});
$b5->g_grid(-column => 2, -row => 3);
my $b6 = $page1->new_ttk__button(-width => 5, -text => 6, -command => sub {b6()});
$b6->g_grid(-column => 3, -row => 3);
my $b7 = $page1->new_ttk__button(-width => 5, -text => 7, -command => sub {b7()});
$b7->g_grid(-column => 4, -row => 3);
my $b8 = $page1->new_ttk__button(-width => 5, -text => 8, -command => sub {b8()});
$b8->g_grid(-column => 1, -row => 4);
my $b9 = $page1->new_ttk__button(-width => 5, -text => 9, -command => sub {b9()});
$b9->g_grid(-column => 2, -row => 4);
my $b10 = $page1->new_ttk__button(-width => 5, -text => 10, -command => sub {b10()});
$b10->g_grid(-column => 3, -row => 4);
my $b11 = $page1->new_ttk__button(-width => 5, -text => 11, -command => sub {b11()});
$b11->g_grid(-column => 4, -row => 4);
my $b12 = $page1->new_ttk__button(-width => 5, -text => 12, -command => sub {b12()});
$b12->g_grid(-column => 1, -row => 5);
my $b13 = $page1->new_ttk__button(-width => 5, -text => 13, -command => sub {b13()});
$b13->g_grid(-column => 2, -row => 5);
my $b14 = $page1->new_ttk__button(-width => 5, -text => 14, -command => sub {b14()});
$b14->g_grid(-column => 3, -row => 5);
my $b15 = $page1->new_ttk__button(-width => 5, -text => 15, -command => sub {b15()});
$b15->g_grid(-column => 4, -row => 5);

#Image
my $zero1 = $page1->new_ttk__label(-image=> "zero1img")->g_grid(-column => 0, -row => 3, -rowspan => 3);
my $one1 = $page1->new_ttk__label(-image => "one1img")->g_grid(-column => 5, -row => 3, -rowspan => 3);

#Text
my $zerotext1 = $page1->new_ttk__label(-text =>"Hello! I'm Zero.");
$zerotext1->g_grid(-column => 0, -row=>2, -padx => 50);
my $onetext1 = $page1->new_ttk__label(-text =>"Hello! I'm One.");
$onetext1->g_grid(-column => 5, -row=>1, -padx => 50);
my $binary1 = $page1->new_ttk__label(-text =>"And we're the two members of the group Binary Digits. Today we're going to teach you the basics of binary.\n
Click on the buttons to see their binary values!", -justify => "center");
$binary1->g_grid(-column => 0, -row=>8, -padx => 50, -columnspan=> 6, -sticky=> "we");

#Entry
my $binval = $page1->new_ttk__entry(-width => 20,  -justify => "center", -font => "TitleFont", -textvariable => \$bin);
$binval->g_grid(-column => 1, -row=> 6, -columnspan => 4, -rowspan => 2, -pady=> 20);

#Return values
sub b0 {$bin = 0;}
sub b1 {$bin = 1;}
sub b2 {$bin = 10;}
sub b3 {$bin = 11;}
sub b4 {$bin = 100;}
sub b5 {$bin = 101;}
sub b6 {$bin = 110;}
sub b7 {$bin = 111;}
sub b8 {$bin = 1000;}
sub b9 {$bin = 1001;}
sub b10 {$bin = 1010;}
sub b11 {$bin = 1011;}
sub b12 {$bin = 1100;}
sub b13 {$bin = 1101;}
sub b14 {$bin = 1110;}
sub b15 {$bin = 1111;}

#####Tab2#####
#Title
my $title2 = $page2->new_ttk__label(-text => "Example", -font=> "TitleFont")->g_grid(-column=>0, -row=>0, -columnspan => 2, -pady => 10);
my $question2 = $page2->new_ttk__label(-text => "Based on what you previously learned, what does 18 equal in binary?")->g_grid(-column=>0, -row => 1, -sticky => "w", -padx => 20);
my $eighteen;
my $choice1 = $page2->new_ttk__radiobutton(-text=>"10010", -variable => "\$eighteen", -value => "10010");
$choice1->g_grid(-column=> 0, -row=> 2, -sticky => "w", -padx => 20, -pady => 5);
my $choice2 = $page2->new_ttk__radiobutton(-text=>"10101", -variable => "\$eighteen", -value => "10101");
$choice2->g_grid(-column=> 0, -row=> 3, -sticky => "w", -padx => 20, -pady => 5);
my $choice3 = $page2->new_ttk__radiobutton(-text=>"11001", -variable => "\$eighteen", -value => "11001");
$choice3->g_grid(-column=> 0, -row=> 4, -sticky => "w", -padx => 20, -pady => 5);
my $choice4 = $page2->new_ttk__radiobutton(-text=>"18", -variable => "\$eighteen", -value => "18");
$choice4->g_grid(-column=> 0, -row=> 5, -sticky => "w", -padx => 20, -pady => 5);
my $click = $page2->new_ttk__button(-width => 10, -text => "Click me!", -command => sub {basicanswer()});
$click->g_grid(-column => 0, -row => 6, -sticky => "w", -padx => 20, -pady => 5);
my $see = $page2->new_ttk__entry(-textvariable=> \$eighteen, -width=> 30);
$see->g_grid(-column => 0, -row => 6);

sub basicanswer {
     if ($choice1->state) {
          $eighteen = "Correct!!!";
          my $zero2a = $page2->new_ttk__label(-image=> "zero2aimg")->g_grid(-column => 0, -row => 7, -rowspan => 3, -sticky => "e");
          my $one2a = $page2->new_ttk__label(-image=> "one2aimg")->g_grid(-column => 1, -row => 7, -rowspan => 3);
     } else {
          $eighteen = "Incorrect, please try again...";           
          my $zero2b = $page2->new_ttk__label(-image=> "zero2bimg")->g_grid(-column => 0, -row => 7, -sticky => "e");
          my $one2b = $page2->new_ttk__label(-image=> "one2bimg")->g_grid(-column => 1, -row => 7);   
     }
}

#####Tab3#####
#Title
my $title3 = $page3->new_ttk__label( -text => "How to add in Binary", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 2, -pady => 10);

my $zero3 = $page3->new_ttk__label(-image => "zero3img")->g_grid(-column => 0, -row => 3, -sticky => "n");
my $one3 = $page3->new_ttk__label(-image => "one3img")->g_grid(-column => 1, -row => 2, -sticky => "n");
my $ten3 = $page3->new_ttk__label(-image => "tenimg")->g_grid(-column => 1, -row => 4, -sticky => "ne");

#Text
my $text3aEOF = <<EOF;
Let's start with me. When adding two of me, 
I know I need to grow, but I'm afraid to do
so.  So I will remain Zero.  Now One will 
tell his story.
EOF
my $text3a = $page3->new_ttk__label(-text=> $text3aEOF);
$text3a->g_grid( -column => 0, -row => 2, -padx => 20, -pady => 20, -sticky => "n");

my $text3bEOF = <<EOF;
Now it's my turn.  When adding two of me, I 
know I need to grow, but I'm the biggest 
digit around, so I have to get creative.  I 
can't stay a One, so I become Zero.  But the
other One gets carried over next to Zero and
we become best friends.  Therefore, One plus 
One in binary equals 10, which for you decimal
folks, is equal to 2. Now lets talk about 
adding One and Zero together.
EOF

my $text3b = $page3->new_ttk__label(-text => $text3aEOF);
$text3b->g_grid( -column=> 1, -row => 3, -padx => 20, -pady=> 20, -sticky => "nwes");

my $text3cEOF = <<EOF;
So, when adding One and Zero, Zero refuses to 
change and One is waiting to grow, so therefore, 
we'll remain as One. Adding our paired friends 
Ten to One, we see that One is more willing to 
be with the other One than its original friend
Zero, there, Ten plus One in binary equals 11, 
which for you decimal folks, is equal to 3.
EOF

my $text3c = $page3->new_ttk__label(-text => $text3cEOF);
$text3c->g_grid( -column=> 0, -row => 4, -padx => 20, -pady=> 20, -columnspan => 2, -sticky => "nw");

#####Tab4#####
#Title
my $try4 = $page4->new_ttk__label( -text => "Try it yourself", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 3, -pady => 10);

#Example
my $example4 = $page4->new_ttk__label( -text => "Example:       1010\n\t +  1111\n\t ______", -font => "HeaderFont"
)->g_grid(-column => 0, -row => 1, -sticky => "w", -padx => 25);

#Button
my $answerbutton4 = $page4->new_ttk__button(-text => "Click to see Answer", -command => sub{answer()});
$answerbutton4->g_grid(-column => 0, -row => 3, -sticky => "w", -padx => 100, -pady => 20);
sub answer { $bin = 10001 }

#Answer
my $field4 = $page4->new_ttk__entry(-width => 6, -textvariable => \$bin, -justify=> "right", -font=> "HeaderFont");
$field4->g_grid(-column => 0, -row => 2, -sticky => "w", -padx => 120);

#Image
my $zero4 = $page4->new_ttk__label(-image=> "zero4img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky=> "w");
my $one4 = $page4->new_ttk__label(-image => "one4img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky => "e");

#Canvas Title
my $pad4 = $page4->new_ttk__label (-text => "Use the sketchpad below to assist you if you need it!")->g_grid(-column => 0, -row => 4, -columnspan => 2, -pady=> 10, -padx => 40);

#Canvas
my $canvas = $page4->new_tk__canvas(-scrollregion => "0 0 0 0", -width => 600, -height => 300, -bg => "white", -bd => 10, -relief => "groove");
$canvas->g_grid(-column=> 0, -row=> 5, -columnspan => 2, -padx=> 20);
$canvas->g_bind("<1>", [sub {my ($x,$y) = @_; $lastx=$canvas->canvasx($x); $lasty=$canvas->canvasy($y)}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-Motion>", [sub {my ($x,$y) = @_; addLine($canvas->canvasx($x),$canvas->canvasy($y))}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-ButtonRelease>", sub {doneStroke();});
$id = $canvas->create_rectangle(10, 35, 30, 55, -fill => "white", -tags => "palette palettewhite");
$canvas->bind($id, "<1>", sub {setColor("white")});
$id = $canvas->create_rectangle(10, 60, 30, 80, -fill => "black", -tags => "palette paletteblack paletteSelected");
$canvas->bind($id, "<1>", sub {setColor("black")});

#####Tab5####
#Title
my $title5 = $page5->new_ttk__label( -text => "How to subtract in Binary", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 2, -pady => 10);

#Image
my $zero5 = $page5->new_ttk__label(-image => "zero5img")->g_grid(-column => 0, -row => 3, -sticky => "n");
my $one5 = $page5->new_ttk__label(-image => "one5img")->g_grid(-column => 1, -row => 2, -sticky => "n");

#Text

my $text5aEOF = <<EOF;
Now it's time to learn subtraction. It's similar 
to addition instead of growing, we want to shrink.
Let's start with me, Zero!  I can't shrink to a 
larger number, so I will remain zero.  Now it's 
One's turn.
EOF

my $text5a = $page5->new_ttk__label(-text=> $text5aEOF);
$text5a->g_grid( -column => 0, -row => 2, -padx => 20, -pady => 20, -sticky => "n");

my $text5bEOF = <<EOF;
I too need to shrink, but I can't stay one, so I 
must also go to zero. Now we'll explain what 
happens you involve one and zero, where things 
get interesting!
EOF

my $text5b = $page5->new_ttk__label(-text => $text5bEOF);
$text5b->g_grid( -column=> 1, -row => 3, -padx => 20, -pady=> 20, -sticky => "nwes");

my $text5cEOF = <<EOF;
It's easier to subtract Zero from One than One 
from Zero.  Why? Because One is bigger than zero.
When subtracting zero from one, nothing changes 
and the value remains.  BUT, when you subtract one
from zero, you need help because one is larger than
zero. The value equals one, but you must borrow 
from the next digit over to make it work.
EOF

my $text5c = $page5->new_ttk__label(-text => $text5cEOF);
$text5c->g_grid( -column=> 0, -row => 4, -padx => 20, -pady=> 20, -columnspan => 2, -sticky => "nw");

#####Tab6#####
#Title
my $try6 = $page6->new_ttk__label( -text => "Try it yourself", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 3, -pady => 10);

#Example
my $example6 = $page6->new_ttk__label( -text => "Example:       11001\n\t -  00111\n\t ______", -font => "HeaderFont"
)->g_grid(-column => 0, -row => 1, -sticky => "w", -padx => 25);

#Button
my $answerbutton6 = $page6->new_ttk__button(-text => "Click to see Answer", -command => sub{answer6()});
$answerbutton6->g_grid(-column => 0, -row => 3, -sticky => "w", -padx => 100, -pady => 20);
sub answer6 { $bin = 11010 }

#Answer
my $field6 = $page6->new_ttk__entry(-width => 6, -textvariable => \$bin, -justify=> "right", -font=> "HeaderFont");
$field6->g_grid(-column => 0, -row => 2, -sticky => "w", -padx => 120);

#Image
my $zero6 = $page6->new_ttk__label(-image=> "zero6img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky=> "w");
my $one6 = $page6->new_ttk__label(-image => "one6img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky => "e");

#Canvas Title
my $pad6 = $page6->new_ttk__label (-text => "Use the sketchpad below to assist you if you need it!")->g_grid(-column => 0, -row => 4, -columnspan => 2, -pady=> 10, -padx => 40);

#Canvas
$canvas = $page6->new_tk__canvas(-scrollregion => "0 0 0 0", -width => 600, -height => 300, -bg => "white", -bd => 10, -relief => "groove");
$canvas->g_grid(-column=> 0, -row=> 5, -columnspan => 2, -padx=> 20);
$canvas->g_bind("<1>", [sub {my ($x,$y) = @_; $lastx=$canvas->canvasx($x); $lasty=$canvas->canvasy($y)}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-Motion>", [sub {my ($x,$y) = @_; addLine($canvas->canvasx($x),$canvas->canvasy($y))}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-ButtonRelease>", sub {doneStroke();});
$id = $canvas->create_rectangle(10, 35, 30, 55, -fill => "white", -tags => "palette palettewhite");
$canvas->bind($id, "<1>", sub {setColor("white")});
$id = $canvas->create_rectangle(10, 60, 30, 80, -fill => "black", -tags => "palette paletteblack paletteSelected");
$canvas->bind($id, "<1>", sub {setColor("black")});

#####Tab7#####
#Title
my $title7 = $page7->new_ttk__label( -text => "How to multiply in Binary", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 2, -pady => 10);

#Image
my $zero7 = $page7->new_ttk__label(-image => "zero7img")->g_grid(-column => 0, -row => 3, -sticky => "n");
my $one7 = $page7->new_ttk__label(-image => "one7img")->g_grid(-column => 1, -row => 2, -sticky => "n");

#Text
my $text7a = $page7->new_ttk__label(-text=> "Insert text");
$text7a->g_grid( -column => 0, -row => 2, -padx => 20, -pady => 20, -sticky => "n");

my $text7b = $page7->new_ttk__label(-text => "Insert text.");
$text7b->g_grid( -column=> 1, -row => 3, -padx => 20, -pady=> 20, -sticky => "nwes");

my $text7c = $page7->new_ttk__label(-text => "Insert text.");
$text7c->g_grid( -column=> 0, -row => 4, -padx => 20, -pady=> 20, -columnspan => 2, -sticky => "nw");

#####Tab8#####
#Title
my $try8 = $page8->new_ttk__label( -text => "Try it yourself", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 3, -pady => 10);

#Example
my $example8 = $page8->new_ttk__label( -text => "Example:       1001\n\t x  0111\n\t ______", -font => "HeaderFont"
)->g_grid(-column => 0, -row => 1, -sticky => "w", -padx => 25);

#Button
my $answerbutton8 = $page8->new_ttk__button(-text => "Click to see Answer", -command => sub{answer6()});
$answerbutton8->g_grid(-column => 0, -row => 3, -sticky => "w", -padx => 100, -pady => 20);
sub answer8 { $bin = 11010 }

#Answer
my $field8 = $page8->new_ttk__entry(-width => 6, -textvariable => \$bin, -justify=> "right", -font=> "HeaderFont");
$field8->g_grid(-column => 0, -row => 2, -sticky => "w", -padx => 120);

#Image
my $zero8 = $page8->new_ttk__label(-image=> "zero8img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky=> "w");
my $one8 = $page8->new_ttk__label(-image => "one8img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky => "e");

#Canvas Title
my $pad8 = $page8->new_ttk__label (-text => "Use the sketchpad below to assist you if you need it!")->g_grid(-column => 0, -row => 4, -columnspan => 2, -pady=> 10, -padx => 40);

#Canvas
$canvas = $page8->new_tk__canvas(-scrollregion => "0 0 0 0", -width => 600, -height => 300, -bg => "white", -bd => 10, -relief => "groove");
$canvas->g_grid(-column=> 0, -row=> 5, -columnspan => 2, -padx=> 20);
$canvas->g_bind("<1>", [sub {my ($x,$y) = @_; $lastx=$canvas->canvasx($x); $lasty=$canvas->canvasy($y)}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-Motion>", [sub {my ($x,$y) = @_; addLine($canvas->canvasx($x),$canvas->canvasy($y))}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-ButtonRelease>", sub {doneStroke();});
$id = $canvas->create_rectangle(10, 35, 30, 55, -fill => "white", -tags => "palette palettewhite");
$canvas->bind($id, "<1>", sub {setColor("white")});
$id = $canvas->create_rectangle(10, 60, 30, 80, -fill => "black", -tags => "palette paletteblack paletteSelected");
$canvas->bind($id, "<1>", sub {setColor("black")});


#####Tab9#####
#Title
my $title9 = $page9->new_ttk__label( -text => "How to divide in Binary", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 2, -pady => 10);

#Image
my $zero9 = $page9->new_ttk__label(-image => "zero9img")->g_grid(-column => 0, -row => 3, -sticky => "n");
my $one9 = $page9->new_ttk__label(-image => "one9img")->g_grid(-column => 1, -row => 2, -sticky => "n");

#Text
my $text9a = $page9->new_ttk__label(-text=> "Insert text");
$text9a->g_grid( -column => 0, -row => 2, -padx => 20, -pady => 20, -sticky => "n");

my $text9b = $page9->new_ttk__label(-text => "Insert text.");
$text9b->g_grid( -column=> 1, -row => 3, -padx => 20, -pady=> 20, -sticky => "nwes");

my $text9c = $page9->new_ttk__label(-text => "Insert text.");
$text9c->g_grid( -column=> 0, -row => 4, -padx => 20, -pady=> 20, -columnspan => 2, -sticky => "nw");

#####Tab10#####
#Title
my $try10 = $page10->new_ttk__label( -text => "Try it yourself", -font=> "TitleFont")->g_grid(-column => 0, -row => 0, -columnspan => 3, -pady => 10);

#Example
my $example10 = $page10->new_ttk__label( -text => "Example:       1001\n\t /  0111\n\t ______", -font => "HeaderFont"
)->g_grid(-column => 0, -row => 1, -sticky => "w", -padx => 25);

#Button
my $answerbutton10 = $page10->new_ttk__button(-text => "Click to see Answer", -command => sub{answer6()});
$answerbutton10->g_grid(-column => 0, -row => 3, -sticky => "w", -padx => 100, -pady => 20);
sub answer10 { $bin = 11010 }

#Answer
my $field10 = $page10->new_ttk__entry(-width => 6, -textvariable => \$bin, -justify=> "right", -font=> "HeaderFont");
$field10->g_grid(-column => 0, -row => 2, -sticky => "w", -padx => 120);

my $zero10 = $page10->new_ttk__label(-image=> "zero10img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky=> "w");
my $one10 = $page10->new_ttk__label(-image => "one10img")->g_grid(-column => 1, -row => 2, -rowspan => 2, -sticky => "e");

#Canvas Title
my $pad10 = $page10->new_ttk__label (-text => "Use the sketchpad below to assist you if you need it!")->g_grid(-column => 0, -row => 4, -columnspan => 2, -pady=> 10, -padx => 40);

#Canvas
$canvas = $page4->new_tk__canvas(-scrollregion => "0 0 0 0", -width => 600, -height => 300, -bg => "white", -bd => 10, -relief => "groove");
$canvas->g_grid(-column=> 0, -row=> 5, -columnspan => 2, -padx=> 20);
$canvas->g_bind("<1>", [sub {my ($x,$y) = @_; $lastx=$canvas->canvasx($x); $lasty=$canvas->canvasy($y)}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-Motion>", [sub {my ($x,$y) = @_; addLine($canvas->canvasx($x),$canvas->canvasy($y))}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-ButtonRelease>", sub {doneStroke();});
$id = $canvas->create_rectangle(10, 35, 30, 55, -fill => "white", -tags => "palette palettewhite");
$canvas->bind($id, "<1>", sub {setColor("white")});
$id = $canvas->create_rectangle(10, 60, 30, 80, -fill => "black", -tags => "palette paletteblack paletteSelected");
$canvas->bind($id, "<1>", sub {setColor("black")});

#Canvas subroutines
sub setColor {
    my ($newcolor) = @_;
    $color = $newcolor;
    $canvas->dtag_all("paletteSelected");
    $canvas->itemconfigure("palette", -outline => "black");
    $canvas->addtag("paletteSelected", withtag => "palette".$color);
    $canvas->itemconfigure("paletteSelected", -outline => "#999999");
}
setColor "black";

sub addLine {
    my ($x,$y) = @_;
     if ($color eq "white") {
             $canvas->create_line($lastx,$lasty,$x,$y, -fill => $color, -width => 20, -tags => "currentline");
     } else {
             $canvas->create_line($lastx,$lasty,$x,$y, -fill => $color, -width => 5, -tags => "currentline");
     }
     $lastx = $x; $lasty = $y;
}

sub doneStroke {
     if ($color eq "white") {
          $canvas->itemconfigure("currentline", -width =>20);
     } else {
          $canvas->itemconfigure("currentline", -width =>2);
     }
}

#Run program
Tkx::MainLoop();


