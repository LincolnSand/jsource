1:@:(dbr bind Debug)@:(9!:19)2^_44[(echo^:ECHOFILENAME) './g320.ijs'
NB. ,y ------------------------------------------------------------------

randuni''

t        -: ,(i. 2 3 4){t=:?24$2
(|.t)    -: ,(i.-2 3 4){t=:?24$2

(i.24)   -: ,i. 2 3 4
(|.i.24) -: ,i.-2 3 4

t        -: ,(i. 2 3 4){t=:o._50+?24$1232
(|.t)    -: ,(i.-2 3 4){t=:o._50+?24$2123

t        -: ,(i. 2 3 4){t=:j./_50+?2 24$1232
(|.t)    -: ,(i.-2 3 4){t=:j./_50+?2 24$2123

t        -: ,(i. 2 3 4){t=:24$3 4;;:'j./_50+?2 24$123 2'
(|.t)    -: ,(i.-2 3 4){t=:24$5j6;;:'j./_50+?2 24$2 123'

0 = #,0 3 2 3$0 1
0 = #,0 3 4 5$a.
0 = #,0 3 4 5$adot1
0 = #,0 3 4 5$adot2
0 = #,i.2 3 4 0
0 = #,o.i.2 3 4 0
0 = #,0j1*i.2 3 0 4
0 = #, 2 0 2 $<0

1 = #,0
1 = #,'a'
1 = #,u:'a'
1 = #,10&u:'a'
1 = #,9
1 = #,3.4
1 = #,3j4
1 = #,<123


NB. ,"r y ---------------------------------------------------------------

([ -: ,"1) ?4 13$1e8
(, -: ,"2) ?4 13$1e8
(,"0 x) -: (($x),1)$,x=:o.?4 13$1e8
(,"_1 -: ,"2) (?4 7 11$#x){x=:'amelioration delicatessen'
(,"2 x) -: 4 77$,x=:?4 7 11$2
(,"_1 -: ,"2) (?4 7 11$#x){x=:u:'amelioration delicatessen'
(,"2 x) -: 4 77$,x=:?4 7 11$2
(,"_1 -: ,"2) (?4 7 11$#x){x=:10&u:'amelioration delicatessen'
(,"2 x) -: 4 77$,x=:?4 7 11$2
(,"_1 -: ,"2) (?4 7 11$#x){x=:s:@<"0 'amelioration delicatessen'
(,"2 x) -: 4 77$,x=:?4 7 11$2

(i.0 24 ) -: ,"3 i.0 2 3 4
(i.2 3 0) -: ,"_2 i.2 3 5 7 11 0

'limit error' -: ,"2 etx (>IF64{0 2e9 2;0 5e18 2)$9


NB. x,y -----------------------------------------------------------------

NB. atom-atom
0 1    -: 0,1
'ab'   -: 'a','b'
(u:'ab')   -: (u:'a'),u:'b'
(10&u:'ab')   -: (10&u:'a'),10&u:'b'
(s:@<"0 'ab')   -: (s:@<"0 'a'),s:@<"0 'b'
3 4    -: 3,4
1 _4.5 -: 1,_4.5
3 4j5  -: 3,4j5

NB. atom-list
0 1 1 0 0   -: 0, 1 1 0 0
1 1 0 0 0   -: 0,~1 1 0 0
'abcde'     -: 'abcd', 'e'
'eabcd'     -: 'abcd',~'e'
'abcde'     -: (u:'abcd'), u:'e'
'eabcd'     -: (u:'abcd'),~ u:'e'
'abcde'     -: (10&u:'abcd'), 10&u:'e'
'eabcd'     -: (10&u:'abcd'),~ 10&u:'e'
(s:@<"0 'abcde')     -: (s:@<"0 'abcd'), s:@<"0 'e'
(s:@<"0 'eabcd')     -: (s:@<"0 'abcd'),~s:@<"0 'e'
3 4 7 5 6   -: 3, 4 7 5 6
4 7 5 6 3   -: 3,~4 7 5 6
3 4 7.5 6 8 -: 3, 4 7.5 6 8
4 7.5 6 8 3 -: 3,~4 7.5 6 8
3 4 7j5 6 8 -: 3 4 7j5, 6 8
6 8 3 4 7j5 -: 3 4 7j5,~6 8

NB. atom-array
(5 2$9 9,i.8)   -: 9, i.4 2
(5 2$(i.8),9 9) -: 9,~i.4 2

NB. atom-empty
(,' ') -: ' ',''
5 0    -: $ ' ',4 0  $'a'
5 0 3  -: $ ' ',4 0 3$'a'

NB. list-list
0 1 1 0 0   -: 0 1 1,0 0
'abcde'     -: 'ab','cde'
'abcde'     -: (u:'ab'),u:'cde'
'abcde'     -: (10&u:'ab'),10&u:'cde'
(s:@<"0 'abcde')     -: (s:@<"0 'ab'),s:@<"0 'cde'
3 4 7 5 6   -: 3 4,7 5 6
3 4 7.5 6 8 -: 3 4 7.5,6 8
3 4 7j5 6 8 -: 3 4,7j5 6 8

NB. list-array
(9 10 11, 4 3{.i.4 2) -: 9 10 11, i.4 2
(9 10 11,~4 3{.i.4 2) -: 9 10 11,~i.4 2
(5 2$0 0, i.8)        -: ''  , i.4 2
(5 2$(i.8),0 0)       -: ($0),~i.4 2

NB. numeric
x=:i.2 6
t=:i.4 3 2
5 3 6 -: $x,t
5 3 6 -: $t,x
(((}.$t)$1), t) -: 1, t
(((}.$t)$1),~t) -: 1,~t
((1 3 2{.,:,:99 13), t) -: 99 13, t
((1 3 2{.,:,:99 13),~t) -: 99 13,~t
(1 0 0+$t) -: $(|.2{t), t
(1 0 0+$t) -: $(|.2{t),~t
(2 1 1*$t) -: $(|.t), t
(2 1 1*$t) -: $(|.t),~t

(3 6$(6$0), ,x) -: ($0), x
(3 6$(6$0),~,x) -: ($0),~x
(3 6$(6$0), ,x) -: '', x
(3 6$(6$0),~,x) -: '',~x
(3 6$(6$0), ,x) -: (0$<''), x
(3 6$(6$0),~,x) -: (0$<''),~x

NB. literal
x=:a.{~97+i.2 6
t=:a.{~97+i.4 3 2
5 3 6 -: $x,t
5 3 6 -: $t,x
(((}.$t)$'a'), t) -: 'a', t
(((}.$t)$'a'),~t) -: 'a',~t
((1 3 2{.,:,:'*&'), t) -: '*&', t
((1 3 2{.,:,:'*&'),~t) -: '*&',~t
(1 0 0+$t) -: $(|.2{t), t
(1 0 0+$t) -: $(|.2{t),~t
(2 1 1*$t) -: $(|.t), t
(2 1 1*$t) -: $(|.t),~t

(3 6$(6$' '), ,x) -: ($0), x
(3 6$(6$' '),~,x) -: ($0),~x
(3 6$(6$' '), ,x) -: '', x
(3 6$(6$' '),~,x) -: '',~x
(3 6$(6$' '), ,x) -: (0$<''), x
(3 6$(6$' '),~,x) -: (0$<''),~x

NB. literal2
x=:adot1{~97+i.2 6
t=:adot1{~97+i.4 3 2
5 3 6 -: $x,t
5 3 6 -: $t,x
(((}.$t)$u:'a'), t) -: (u:'a'), t
(((}.$t)$u:'a'),~t) -: (u:'a'),~t
((1 3 2{.,:,:u:'*&'), t) -: (u:'*&'), t
((1 3 2{.,:,:u:'*&'),~t) -: (u:'*&'),~t
(1 0 0+$t) -: $(|.2{t), t
(1 0 0+$t) -: $(|.2{t),~t
(2 1 1*$t) -: $(|.t), t
(2 1 1*$t) -: $(|.t),~t

(3 6$(6$u:' '), ,x) -: ($0), x
(3 6$(6$u:' '),~,x) -: ($0),~x
(3 6$(6$u:' '), ,x) -: '', x
(3 6$(6$u:' '),~,x) -: '',~x
(3 6$(6$u:' '), ,x) -: (0$<''), x
(3 6$(6$u:' '),~,x) -: (0$<''),~x

NB. literal4
x=:adot2{~97+i.2 6
t=:adot2{~97+i.4 3 2
5 3 6 -: $x,t
5 3 6 -: $t,x
(((}.$t)$10&u:'a'), t) -: (10&u:'a'), t
(((}.$t)$10&u:'a'),~t) -: (10&u:'a'),~t
((1 3 2{.,:,:10&u:'*&'), t) -: (10&u:'*&'), t
((1 3 2{.,:,:10&u:'*&'),~t) -: (10&u:'*&'),~t
(1 0 0+$t) -: $(|.2{t), t
(1 0 0+$t) -: $(|.2{t),~t
(2 1 1*$t) -: $(|.t), t
(2 1 1*$t) -: $(|.t),~t

(3 6$(6$10&u:' '), ,x) -: ($0), x
(3 6$(6$10&u:' '),~,x) -: ($0),~x
(3 6$(6$10&u:' '), ,x) -: '', x
(3 6$(6$10&u:' '),~,x) -: '',~x
(3 6$(6$10&u:' '), ,x) -: (0$<''), x
(3 6$(6$10&u:' '),~,x) -: (0$<''),~x

NB. symbol
x=:sdot0{~97+i.2 6
t=:sdot0{~97+i.4 3 2
5 3 6 -: $x,t
5 3 6 -: $t,x
(((}.$t)$s:@<"0 'a'), t) -: (s:@<"0 'a'), t
(((}.$t)$s:@<"0 'a'),~t) -: (s:@<"0 'a'),~t
((1 3 2{.,:,:s:@<"0 '*&'), t) -: (s:@<"0 '*&'), t
((1 3 2{.,:,:s:@<"0 '*&'),~t) -: (s:@<"0 '*&'),~t
(1 0 0+$t) -: $(|.2{t), t
(1 0 0+$t) -: $(|.2{t),~t
(2 1 1*$t) -: $(|.t), t
(2 1 1*$t) -: $(|.t),~t

(3 6$(6${.s:''), ,x) -: ($0), x
(3 6$(6${.s:''),~,x) -: ($0),~x
(3 6$(6${.s:''), ,x) -: '', x
(3 6$(6${.s:''),~,x) -: '',~x
(3 6$(6${.s:''), ,x) -: (0$<''), x
(3 6$(6${.s:''),~,x) -: (0$<''),~x

NB. boxed
x=:2 6$;:'(2 1 1*$t) -: $(|.t),~t'
t=:4 3 2$;:'((a.{~66+i.3 2),~(1,$t)$,t) -: (a.{~66+i.3 2),~t'
5 3 6 -: $x,t
5 3 6 -: $t,x
(((}.$t)$<i.8), t) -: (<i.8), t
(((}.$t)$<i.8),~t) -: (<i.8),~t
((1 3 2{.,:,:9;10 11), t) -: (9;10 11), t
((1 3 2{.,:,:9;10 11),~t) -: (9;10 11),~t
(1 0 0+$t) -: $(|.2{t), t
(1 0 0+$t) -: $(|.2{t),~t
(2 1 1*$t) -: $(|.t), t
(2 1 1*$t) -: $(|.t),~t

(3 6$(6$<''), ,x) -: ($0), x
(3 6$(6$<''),~,x) -: ($0),~x
(3 6$(6$<''), ,x) -: '', x
(3 6$(6$<''),~,x) -: '',~x
(3 6$(6$<''), ,x) -: (0$<''), x
(3 6$(6$<''),~,x) -: (0$<''),~x

x=:?31 2$1e5 [ y=:?1 1$1e5
x -: }:x,y
x -: }.y,x

x=:a.{~?31 2$#a. [ y=:a.{~?1 1$#a.
x -: }:x,y
x -: }.y,x

'domain error' -: 3 4 , etx 'abc'
'domain error' -: 3 4 ,~etx 'abc'
'domain error' -: 3 4 , etx u:'abc'
'domain error' -: 3 4 ,~etx u:'abc'
'domain error' -: 3 4 , etx 10&u:'abc'
'domain error' -: 3 4 ,~etx 10&u:'abc'
'domain error' -: 3 4 , etx s:@<"0 'abc'
'domain error' -: 3 4 ,~etx s:@<"0 'abc'
'domain error' -: 'ab', etx 'a';3
'domain error' -: 'ab',~etx 'a';3
'domain error' -: 3 4 , etx 'a';3
'domain error' -: 3 4 ,~etx 'a';3


NB. x,y empty and fills -------------------------------------------------

(3 5 2 4{.' ') -: (3 2 0$''), 2 5 0 4$''
(3 5 2 4{.' ') -: (3 2 0$''),~2 5 0 4$''
(3 5 2 0{.' ') -: (3 2 0$''), 2 5 0 0$''
(3 5 2 0{.' ') -: (3 2 0$''),~2 5 0 0$''

(3 5 2 4{.a:) -: (3 2 0$a:), 2 5 0 4$a:
(3 5 2 4{.a:) -: (3 2 0$a:),~2 5 0 4$a:
(3 5 2 0{.a:) -: (3 2 0$a:), 2 5 0 0$a:
(3 5 2 0{.a:) -: (3 2 0$a:),~2 5 0 0$a:

(3 5 2 4{.0) -: (3 2 0$0), 2 5 0 4$0
(3 5 2 4{.0) -: (3 2 0$0),~2 5 0 4$0
(3 5 2 0{.0) -: (3 2 0$0), 2 5 0 0$0
(3 5 2 0{.0) -: (3 2 0$0),~2 5 0 0$0

(3 5 2 4{.0) -: (3 2 0$0), 2 5 0 4$3.4
(3 5 2 4{.0) -: (3 2 0$0), 2 5 0 4$3j4
(3 5 2 4{.0) -: (3 2 0$0), 2 5 0 4$3x
(3 5 2 4{.0) -: (3 2 0$0), 2 5 0 4$3r4

(x,~  4$99 99, 4$  0) -: 99 99 ,      x=:i.2 4
(x,~  4$99 99, 4$  1) -: 99 99 ,!.1   x=:i.2 4
(x,~  4$99 99, 4$100) -: 99 99 ,!.100 x=:i.2 4
(x,~  4$99 99, 4$3.5) -: 99 99 ,!.3.5 x=:i.2 4
(x,~  4$99 99, 4$3j5) -: 99 99 ,!.3j5 x=:i.2 4

(x,~  4$99 99, 4$  0) -: 99 99 ,      x=:i.0 4
(x,~  4$99 99, 4$  1) -: 99 99 ,!.1   x=:i.0 4
(x,~  4$99 99, 4$100) -: 99 99 ,!.100 x=:i.0 4
(x,~  4$99 99, 4$3.5) -: 99 99 ,!.3.5 x=:i.0 4
(x,~  4$99 99, 4$3j5) -: 99 99 ,!.3j5 x=:i.0 4

(x,~3 4$99 99,12$  0) -: 99 99 ,      x=:i.2 3 4
(x,~3 4$99 99,12$  1) -: 99 99 ,!.1   x=:i.2 3 4
(x,~3 4$99 99,12$100) -: 99 99 ,!.100 x=:i.2 3 4
(x,~3 4$99 99,12$3.5) -: 99 99 ,!.3.5 x=:i.2 3 4
(x,~3 4$99 99,12$3j5) -: 99 99 ,!.3j5 x=:i.2 3 4

(x,   4$99 99, 4$  0) -: 99 99 ,     ~x=:i.2 4
(x,   4$99 99, 4$  1) -: 99 99 ,!.1  ~x=:i.2 4
(x,   4$99 99, 4$100) -: 99 99 ,!.100~x=:i.2 4
(x,   4$99 99, 4$3.5) -: 99 99 ,!.3.5~x=:i.2 4
(x,   4$99 99, 4$3j5) -: 99 99 ,!.3j5~x=:i.2 4

(x,   4$99 99, 4$  0) -: 99 99 ,     ~x=:i.0 4
(x,   4$99 99, 4$  1) -: 99 99 ,!.1  ~x=:i.0 4
(x,   4$99 99, 4$100) -: 99 99 ,!.100~x=:i.0 4
(x,   4$99 99, 4$3.5) -: 99 99 ,!.3.5~x=:i.0 4
(x,   4$99 99, 4$3j5) -: 99 99 ,!.3j5~x=:i.0 4

(x, 3 4$99 99,12$  0) -: 99 99 ,     ~x=:i.2 3 4
(x, 3 4$99 99,12$  1) -: 99 99 ,!.1  ~x=:i.2 3 4
(x, 3 4$99 99,12$100) -: 99 99 ,!.100~x=:i.2 3 4
(x, 3 4$99 99,12$3.5) -: 99 99 ,!.3.5~x=:i.2 3 4
(x, 3 4$99 99,12$3j5) -: 99 99 ,!.3j5~x=:i.2 3 4

NB. literal
(x,~  4$'ab',  4$' ') -: 'ab'  ,      x=:2 4$'short shrift'
(x,~  4$'ab',  4$'q') -: 'ab'  ,!.'q' x
(x,~3 4$'ab', 12$' ') -: 'ab'  ,      x=:2 3 4$'hey nonny nonny'
(x,~3 4$'ab', 12$'q') -: 'ab'  ,!.'q' x

(x,   4$'ab',  4$' ') -: 'ab'  ,     ~x=:2 4$'Esperanto'
(x,   4$'ab',  4$'q') -: 'ab'  ,!.'q'~x
(x, 3 4$'ab', 12$' ') -: 'ab'  ,     ~x=:2 3 4$'Vandermonde matrices'
(x, 3 4$'ab', 12$'q') -: 'ab'  ,!.'q'~x

(x,~  4$(3;4), 4$a: ) -: (3;4) ,      x=:2 4$;:'how now Charlie Brown?'
(x,~  4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)x
(x,~3 4$(3;4),12$a: ) -: (3;4) ,      x=:2 3 4$;:'sigh no more a-shore x'
(x,~3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)x

(x,   4$(3;4), 4$a: ) -: (3;4) ,      ~x=:2 4$;:'how now Charlie Brown?'
(x,   4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)~x
(x, 3 4$(3;4),12$a: ) -: (3;4) ,      ~x=:2 3 4$;:'sigh no more a-shore x'
(x, 3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)~x

NB. literal2
(x,~  4$'ab',  4$' ') -: 'ab'  ,      x=:2 4$u:'short shrift'
(x,~  4$'ab',  4$'q') -: 'ab'  ,!.'q' x
(x,~3 4$'ab', 12$' ') -: 'ab'  ,      x=:2 3 4$u:'hey nonny nonny'
(x,~3 4$'ab', 12$'q') -: 'ab'  ,!.'q' x

(x,   4$'ab',  4$' ') -: 'ab'  ,     ~x=:2 4$u:'Esperanto'
(x,   4$'ab',  4$'q') -: 'ab'  ,!.'q'~x
(x, 3 4$'ab', 12$' ') -: 'ab'  ,     ~x=:2 3 4$u:'Vandermonde matrices'
(x, 3 4$'ab', 12$'q') -: 'ab'  ,!.'q'~x

(x,~  4$(3;4), 4$a: ) -: (3;4) ,      x=:2 4$(u:&.>) ;:'how now Charlie Brown?'
(x,~  4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)x
(x,~3 4$(3;4),12$a: ) -: (3;4) ,      x=:2 3 4$(u:&.>) ;:'sigh no more a-shore x'
(x,~3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)x

(x,   4$(3;4), 4$a: ) -: (3;4) ,      ~x=:2 4$(u:&.>) ;:'how now Charlie Brown?'
(x,   4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)~x
(x, 3 4$(3;4),12$a: ) -: (3;4) ,      ~x=:2 3 4$(u:&.>) ;:'sigh no more a-shore x'
(x, 3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)~x

NB. literal4
(x,~  4$'ab',  4$' ') -: 'ab'  ,      x=:2 4$10&u:'short shrift'
(x,~  4$'ab',  4$'q') -: 'ab'  ,!.'q' x
(x,~3 4$'ab', 12$' ') -: 'ab'  ,      x=:2 3 4$10&u:'hey nonny nonny'
(x,~3 4$'ab', 12$'q') -: 'ab'  ,!.'q' x

(x,   4$'ab',  4$' ') -: 'ab'  ,     ~x=:2 4$10&u:'Esperanto'
(x,   4$'ab',  4$'q') -: 'ab'  ,!.'q'~x
(x, 3 4$'ab', 12$' ') -: 'ab'  ,     ~x=:2 3 4$10&u:'Vandermonde matrices'
(x, 3 4$'ab', 12$'q') -: 'ab'  ,!.'q'~x

(x,~  4$(3;4), 4$a: ) -: (3;4) ,      x=:2 4$(10&u:&.>) ;:'how now Charlie Brown?'
(x,~  4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)x
(x,~3 4$(3;4),12$a: ) -: (3;4) ,      x=:2 3 4$(10&u:&.>) ;:'sigh no more a-shore x'
(x,~3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)x

(x,   4$(3;4), 4$a: ) -: (3;4) ,      ~x=:2 4$(10&u:&.>) ;:'how now Charlie Brown?'
(x,   4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)~x
(x, 3 4$(3;4),12$a: ) -: (3;4) ,      ~x=:2 3 4$(10&u:&.>) ;:'sigh no more a-shore x'
(x, 3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)~x

NB. symbol
(x,~  4$(s:@<"0 'ab'),  4${.s:''    ) -: (s:@<"0 'ab')  ,      x=:2 4$s:@<"0 'short shrift'
(x,~  4$(s:@<"0 'ab'),  4$s:@<"0 'q') -: (s:@<"0 'ab')  ,!.(s:@<"0 'q') x
(x,~3 4$(s:@<"0 'ab'), 12${.s:''    ) -: (s:@<"0 'ab')  ,      x=:2 3 4$s:@<"0 'hey nonny nonny'
(x,~3 4$(s:@<"0 'ab'), 12$s:@<"0 'q') -: (s:@<"0 'ab')  ,!.(s:@<"0 'q') x

(x,   4$(s:@<"0 'ab'),  4${.s:''    ) -: (s:@<"0 'ab')  ,     ~x=:2 4$s:@<"0 'Esperanto'
(x,   4$(s:@<"0 'ab'),  4$s:@<"0 'q') -: (s:@<"0 'ab')  ,!.(s:@<"0 'q')~x
(x, 3 4$(s:@<"0 'ab'), 12${.s:''    ) -: (s:@<"0 'ab')  ,     ~x=:2 3 4$s:@<"0 'Vandermonde matrices'
(x, 3 4$(s:@<"0 'ab'), 12$s:@<"0 'q') -: (s:@<"0 'ab')  ,!.(s:@<"0 'q')~x

(x,~  4$(3;4), 4$a: ) -: (3;4) ,      x=:2 4$s:@<"0&.> ;:'how now Charlie Brown?'
(x,~  4$(3;4), 4$a: ) -: (3;4) ,      x=:2 4$<"0@s: ;:'how now Charlie Brown?'
(x,~  4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)x
(x,~3 4$(3;4),12$a: ) -: (3;4) ,      x=:2 3 4$s:@<"0&.> ;:'sigh no more a-shore x'
(x,~3 4$(3;4),12$a: ) -: (3;4) ,      x=:2 3 4$<"0@s: ;:'sigh no more a-shore x'
(x,~3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)x

(x,   4$(3;4), 4$a: ) -: (3;4) ,      ~x=:2 4$s:@<"0&.> ;:'how now Charlie Brown?'
(x,   4$(3;4), 4$a: ) -: (3;4) ,      ~x=:2 4$<"0@s: ;:'how now Charlie Brown?'
(x,   4$(3;4), 4$<9 ) -: (3;4) ,!.(<9)~x
(x, 3 4$(3;4),12$a: ) -: (3;4) ,      ~x=:2 3 4$s:@<"0&.> ;:'sigh no more a-shore x'
(x, 3 4$(3;4),12$a: ) -: (3;4) ,      ~x=:2 3 4$<"0@s: ;:'sigh no more a-shore x'
(x, 3 4$(3;4),12$<9 ) -: (3;4) ,!.(<9)~x

'domain error' -: 99 99 ,!.'a' etx 2 3 4$123
'domain error' -: 99 99 ,!.(<0)etx 2 3 4$123
'domain error' -: 'ab'  ,!.12  etx 2 3 4$'x'
'domain error' -: 'ab'  ,!.(<0)etx 2 3 4$'x'
'domain error' -: (3;4) ,!.'a' etx 2 3 4$<123
'domain error' -: (3;4) ,!.12  etx 2 3 4$<123

NB. x , y inplace including virtual extension
x =:  3 3 $ 100 1 10 101 2 20 102 3 30
y =: 2 2 $ 102 5 100 4
(5 3 $ 100 1 10 101 2 20 102 3 30 102 5 __ 100 4 __) -: x ,!.__ y
x =: x ,!.__ y
(5 3 $ 100 1 10 101 2 20 102 3 30 102 5 __ 100 4 __) -: x
(5 3 $ (>: i. 9) ,  0 1 5 2 3 5) -: (>: i. 3 3) ,!.5. i. 2 2
50000 < (7!:2 '(i. 10000) ,!.0 i. 3') - (7!:2 '(i. 10000) , i. 3')
1000 > (7!:2 '(i. 10000) ,!.00 i. 3') - (7!:2 '(i. 10000) , i. 3')  NB. inplaces because same precision for fill
50000 < (7!:2 '(i. 10000) ,!.5. i. 3') - (7!:2 '(i. 10000) , i. 3')

NB. x,"r y --------------------------------------------------------------

cat=: 4 : 'x,y'

'A' (,"1 -: cat"1)&> (3,&.>i.10)$&.><'satrap feudal futile'
'A' (,"1 -: cat"1)&>~(3,&.>i.10)$&.><'supermarine'
((i.10)$&.><'ABCDEFGHI') (,"1 -: cat"1)&>/ (3,&.>i.10)$&.><'oxymoron'
((i.10)$&.><'ABCDEFGHI') (,"1 -: cat"1)&>/~(3,&.>i.10)$&.><'suzerainty'
(<'ABC') (,"_1 -: cat"_1)&> (3,&.>i.10)$&.><'inescapable culpable'
(<'ABC') (,"_1 -: cat"_1)&>~(3,&.>i.10)$&.><'inescapable culpable'

(u:'A') (,"1 -: cat"1)&> (3,&.>i.10)$&.><u:'satrap feudal futile'
(u:'A') (,"1 -: cat"1)&>~(3,&.>i.10)$&.><u:'supermarine'
((i.10)$&.><u:'ABCDEFGHI') (,"1 -: cat"1)&>/ (3,&.>i.10)$&.><u:'oxymoron'
((i.10)$&.><u:'ABCDEFGHI') (,"1 -: cat"1)&>/~(3,&.>i.10)$&.><u:'suzerainty'
(<u:'ABC') (,"_1 -: cat"_1)&> (3,&.>i.10)$&.><u:'inescapable culpable'
(<u:'ABC') (,"_1 -: cat"_1)&>~(3,&.>i.10)$&.><u:'inescapable culpable'

(10&u:'A') (,"1 -: cat"1)&> (3,&.>i.10)$&.><10&u:'satrap feudal futile'
(10&u:'A') (,"1 -: cat"1)&>~(3,&.>i.10)$&.><10&u:'supermarine'
((i.10)$&.><10&u:'ABCDEFGHI') (,"1 -: cat"1)&>/ (3,&.>i.10)$&.><10&u:'oxymoron'
((i.10)$&.><10&u:'ABCDEFGHI') (,"1 -: cat"1)&>/~(3,&.>i.10)$&.><10&u:'suzerainty'
(<10&u:'ABC') (,"_1 -: cat"_1)&> (3,&.>i.10)$&.><10&u:'inescapable culpable'
(<10&u:'ABC') (,"_1 -: cat"_1)&>~(3,&.>i.10)$&.><10&u:'inescapable culpable'

(s:@<"0 'A') (,"1 -: cat"1)&> (3,&.>i.10)$&.>s:@<"0&.> <'satrap feudal futile'
(s:@<"0 'A') (,"1 -: cat"1)&> (3,&.>i.10)$&.><"0@s: <'satrap feudal futile'
(s:@<"0 'A') (,"1 -: cat"1)&>~(3,&.>i.10)$&.>s:@<"0&.> <'supermarine'
(s:@<"0 'A') (,"1 -: cat"1)&>~(3,&.>i.10)$&.><"0@s: <'supermarine'
((i.10)$&.>s:@<"0&.> <'ABCDEFGHI') (,"1 -: cat"1)&>/ (3,&.>i.10)$&.>s:@<"0&.> <'oxymoron'
((i.10)$&.><"0@s: <'ABCDEFGHI') (,"1 -: cat"1)&>/ (3,&.>i.10)$&.><"0@s: <'oxymoron'
((i.10)$&.>s:@<"0&.> <'ABCDEFGHI') (,"1 -: cat"1)&>/~(3,&.>i.10)$&.>s:@<"0&.> <'suzerainty'
((i.10)$&.><"0@s: <'ABCDEFGHI') (,"1 -: cat"1)&>/~(3,&.>i.10)$&.><"0@s: <'suzerainty'
(s:@<"0&.> <'ABC') (,"_1 -: cat"_1)&> (3,&.>i.10)$&.>s:@<"0&.> <'inescapable culpable'
(<"0@s: <'ABC') (,"_1 -: cat"_1)&> (3,&.>i.10)$&.><"0@s: <'inescapable culpable'
(s:@<"0&.> <'ABC') (,"_1 -: cat"_1)&>~(3,&.>i.10)$&.>s:@<"0&.> <'inescapable culpable'
(<"0@s: <'ABC') (,"_1 -: cat"_1)&>~(3,&.>i.10)$&.><"0@s: <'inescapable culpable'

12345 (,"0 -: cat"0) ?3 5 7$1e6
12345 (,"0 -: cat"0)~?3 5 7$1e6
12345 (,"1 -: cat"1) ?3 5 7$1e6
12345 (,"1 -: cat"1)~?3 5 7$1e6
12345 (,"2 -: cat"2) ?3 5 7$1e6
12345 (,"2 -: cat"2)~?3 5 7$1e6
12345 (,"3 -: cat"3) ?3 5 7$1e6
12345 (,"3 -: cat"3)~?3 5 7$1e6

123.4 5 6 (,"0 -: cat"0) o.?3 3 3$1e6
123.4 5 6 (,"0 -: cat"0)~o.?3 3 3$1e6
123.4 5 6 (,"1 -: cat"1) o.?3 3 3$1e6
123.4 5 6 (,"1 -: cat"1)~o.?3 3 3$1e6
123.4 5 6 (,"2 -: cat"2) o.?3 3 3$1e6
123.4 5 6 (,"2 -: cat"2)~o.?3 3 3$1e6
123.4 5 6 (,"3 -: cat"3) o.?3 3 3$1e6
123.4 5 6 (,"3 -: cat"3)~o.?3 3 3$1e6

r=: <"1 ] 4 4#:i.16
f=: 3 : 'xx (,"y -: cat"y) yy'

f&>r [ xx=:    ?  2 3 4$2   [ yy=:    ?  2 3 4$2
f&>r [ xx=:a.{~?  2 3 4$256 [ yy=:a.{~?  2 3 4$256
f&>r [ xx=:adot1{~?  2 3 4$(#adot1) [ yy=:adot1{~?  2 3 4$(#adot1)
f&>r [ xx=:adot2{~?  2 3 4$(#adot2) [ yy=:adot2{~?  2 3 4$(#adot2)
f&>r [ xx=:sdot0{~?  2 3 4$(#sdot0) [ yy=:sdot0{~?  2 3 4$(#sdot0)
f&>r [ xx=:    ?  2 3 4$100 [ yy=:    ?  2 3 4$100
f&>r [ xx=:o.  ?  2 3 4$100 [ yy=:o.  ?  2 3 4$100
f&>r [ xx=:j./ ?2 2 3 4$100 [ yy=:j./ ?2 2 3 4$100

f&>r [ xx=:    ?  2 3  $2   [ yy=:    ?  2 3 4$2
f&>r [ xx=:a.{~?  2 3  $256 [ yy=:a.{~?  2 3 4$256
f&>r [ xx=:adot1{~?  2 3  $(#adot1) [ yy=:adot1{~?  2 3 4$(#adot1)
f&>r [ xx=:adot2{~?  2 3  $(#adot2) [ yy=:adot2{~?  2 3 4$(#adot2)
f&>r [ xx=:sdot0{~?  2 3  $(#sdot0) [ yy=:sdot0{~?  2 3 4$(#sdot0)
f&>r [ xx=:    ?  2 3  $100 [ yy=:    ?  2 3 4$100
f&>r [ xx=:o.  ?  2 3  $100 [ yy=:o.  ?  2 3 4$100
f&>r [ xx=:j./ ?2 2 3  $100 [ yy=:j./ ?2 2 3 4$100

f&>r [ xx=:    ?  2 3 4$2   [ yy=:    ?  2 3  $2
f&>r [ xx=:a.{~?  2 3 4$256 [ yy=:a.{~?  2 3  $256
f&>r [ xx=:adot1{~?  2 3 4$(#adot1) [ yy=:adot1{~?  2 3  $(#adot1)
f&>r [ xx=:adot2{~?  2 3 4$(#adot2) [ yy=:adot2{~?  2 3  $(#adot2)
f&>r [ xx=:sdot0{~?  2 3 4$(#sdot0) [ yy=:sdot0{~?  2 3  $(#sdot0)
f&>r [ xx=:    ?  2 3 4$100 [ yy=:    ?  2 3  $100
f&>r [ xx=:o.  ?  2 3 4$100 [ yy=:o.  ?  2 3  $100
f&>r [ xx=:j./ ?2 2 3 4$100 [ yy=:j./ ?2 2 3  $100

f&>r [ xx=:?2               [ yy=:    ?  2 3 4$2
f&>r [ xx=:'A'              [ yy=:a.{~?  2 3 4$256
f&>r [ xx=:(u:'A')              [ yy=:adot1{~?  2 3 4$(#adot1)
f&>r [ xx=:(10&u:'A')              [ yy=:adot2{~?  2 3 4$(#adot2)
f&>r [ xx=:(s:@<"0 'A')              [ yy=:sdot0{~?  2 3 4$(#sdot0)
f&>r [ xx=:?100             [ yy=:    ?  2 3 4$100
f&>r [ xx=:o.?100           [ yy=:o.  ?  2 3 4$100
f&>r [ xx=:j./?2$100        [ yy=:j./ ?2 2 3 4$100

f&>r [ xx=:    ?  2 3 4$2   [ yy=:?2
f&>r [ xx=:a.{~?  2 3 4$256 [ yy=:'B'
f&>r [ xx=:adot1{~?  2 3 4$(#adot1) [ yy=:u:'B'
f&>r [ xx=:adot2{~?  2 3 4$(#adot2) [ yy=:10&u:'B'
f&>r [ xx=:sdot0{~?  2 3 4$(#sdot0) [ yy=:s:@<"0 'B'
f&>r [ xx=:    ?  2 3 4$100 [ yy=:?100
f&>r [ xx=:o.  ?  2 3 4$100 [ yy=:o.?100
f&>r [ xx=:j./ ?2 2 3 4$100 [ yy=:j./?2$100

3.5 (,"0 1 -: cat"0 1) i.5 0
3.5 (,"1 0 -: cat"1 0)~i.5 0
3.5 (,"0 2 -: cat"0 2) i.3 0 5
3.5 (,"2 0 -: cat"2 0)~i.3 0 5

(i.0 10)  -: (i.0 3),"1 i.0 7
(i.0 8 3) -: (i.0 3),"_1 i.0 7 3

n=:11
test=: 4 : '((n,x)$''x'') (,"1 -: cat"1) (n,y)$''y'''

test"0/~i.20

NB. read-only (AVRO) not modified
xx =: i. 3
xx =: >: xx
0 1 2 -: i. 3
3 : 0 ''
xx =. i. 3
xx =. >: xx
0 1 2 -: i. 3
)

4!:55 ;:'adot1 adot2 sdot0 cat f n r t test x xx y yy'
randfini''

