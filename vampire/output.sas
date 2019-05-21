begin_version
3
end_version
begin_metric
0
end_metric
20
begin_variable
var0
-1
2
Atom light-on(room1)
NegatedAtom light-on(room1)
end_variable
begin_variable
var1
-1
2
Atom light-on(room10)
NegatedAtom light-on(room10)
end_variable
begin_variable
var2
-1
2
Atom light-on(room11)
NegatedAtom light-on(room11)
end_variable
begin_variable
var3
-1
2
Atom light-on(room12)
NegatedAtom light-on(room12)
end_variable
begin_variable
var4
-1
2
Atom light-on(room13)
NegatedAtom light-on(room13)
end_variable
begin_variable
var5
-1
2
Atom light-on(room14)
NegatedAtom light-on(room14)
end_variable
begin_variable
var6
-1
2
Atom light-on(room15)
NegatedAtom light-on(room15)
end_variable
begin_variable
var7
-1
2
Atom light-on(room2)
NegatedAtom light-on(room2)
end_variable
begin_variable
var8
-1
2
Atom light-on(room3)
NegatedAtom light-on(room3)
end_variable
begin_variable
var9
-1
2
Atom light-on(room4)
NegatedAtom light-on(room4)
end_variable
begin_variable
var10
-1
2
Atom light-on(room5)
NegatedAtom light-on(room5)
end_variable
begin_variable
var11
-1
2
Atom light-on(room6)
NegatedAtom light-on(room6)
end_variable
begin_variable
var12
-1
2
Atom light-on(room7)
NegatedAtom light-on(room7)
end_variable
begin_variable
var13
-1
2
Atom light-on(room8)
NegatedAtom light-on(room8)
end_variable
begin_variable
var14
-1
2
Atom light-on(room9)
NegatedAtom light-on(room9)
end_variable
begin_variable
var15
-1
16
Atom slayer-is-in(room1)
Atom slayer-is-in(room10)
Atom slayer-is-in(room11)
Atom slayer-is-in(room12)
Atom slayer-is-in(room13)
Atom slayer-is-in(room14)
Atom slayer-is-in(room15)
Atom slayer-is-in(room2)
Atom slayer-is-in(room3)
Atom slayer-is-in(room4)
Atom slayer-is-in(room5)
Atom slayer-is-in(room6)
Atom slayer-is-in(room7)
Atom slayer-is-in(room8)
Atom slayer-is-in(room9)
<none of those>
end_variable
begin_variable
var16
-1
2
Atom fighting()
NegatedAtom fighting()
end_variable
begin_variable
var17
-1
16
Atom vampire-is-in(room1)
Atom vampire-is-in(room10)
Atom vampire-is-in(room11)
Atom vampire-is-in(room12)
Atom vampire-is-in(room13)
Atom vampire-is-in(room14)
Atom vampire-is-in(room15)
Atom vampire-is-in(room2)
Atom vampire-is-in(room3)
Atom vampire-is-in(room4)
Atom vampire-is-in(room5)
Atom vampire-is-in(room6)
Atom vampire-is-in(room7)
Atom vampire-is-in(room8)
Atom vampire-is-in(room9)
<none of those>
end_variable
begin_variable
var18
-1
2
Atom slayer-is-alive()
NegatedAtom slayer-is-alive()
end_variable
begin_variable
var19
-1
2
Atom vampire-is-alive()
NegatedAtom vampire-is-alive()
end_variable
0
begin_state
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
1
13
0
0
end_state
begin_goal
2
18 0
19 1
end_goal
30
begin_operator
toggle-light room1 room2 room3
0
10
4 0 0 7 1 15 8 17 7 16 1 0
4 0 1 7 1 15 0 17 7 16 1 0
4 7 0 8 0 15 7 17 8 16 1 0
4 7 0 8 1 15 7 17 0 16 1 0
1 7 1 7 -1 0
1 7 0 7 -1 1
3 7 0 8 1 15 7 15 -1 0
3 7 0 8 0 15 7 15 -1 8
3 0 1 7 1 17 7 17 -1 0
3 0 0 7 1 17 7 17 -1 8
1
end_operator
begin_operator
toggle-light room10 room11 room12
0
10
4 1 0 2 1 15 3 17 2 16 1 0
4 1 1 2 1 15 1 17 2 16 1 0
4 2 0 3 0 15 2 17 3 16 1 0
4 2 0 3 1 15 2 17 1 16 1 0
1 2 1 2 -1 0
1 2 0 2 -1 1
3 2 0 3 1 15 2 15 -1 1
3 2 0 3 0 15 2 15 -1 3
3 1 1 2 1 17 2 17 -1 1
3 1 0 2 1 17 2 17 -1 3
1
end_operator
begin_operator
toggle-light room11 room12 room13
0
10
4 2 0 3 1 15 4 17 3 16 1 0
4 2 1 3 1 15 2 17 3 16 1 0
4 3 0 4 0 15 3 17 4 16 1 0
4 3 0 4 1 15 3 17 2 16 1 0
1 3 1 3 -1 0
1 3 0 3 -1 1
3 3 0 4 1 15 3 15 -1 2
3 3 0 4 0 15 3 15 -1 4
3 2 1 3 1 17 3 17 -1 2
3 2 0 3 1 17 3 17 -1 4
1
end_operator
begin_operator
toggle-light room12 room13 room14
0
10
4 3 0 4 1 15 5 17 4 16 1 0
4 3 1 4 1 15 3 17 4 16 1 0
4 4 0 5 0 15 4 17 5 16 1 0
4 4 0 5 1 15 4 17 3 16 1 0
1 4 1 4 -1 0
1 4 0 4 -1 1
3 4 0 5 1 15 4 15 -1 3
3 4 0 5 0 15 4 15 -1 5
3 3 1 4 1 17 4 17 -1 3
3 3 0 4 1 17 4 17 -1 5
1
end_operator
begin_operator
toggle-light room13 room14 room15
0
10
4 4 0 5 1 15 6 17 5 16 1 0
4 4 1 5 1 15 4 17 5 16 1 0
4 5 0 6 0 15 5 17 6 16 1 0
4 5 0 6 1 15 5 17 4 16 1 0
1 5 1 5 -1 0
1 5 0 5 -1 1
3 5 0 6 1 15 5 15 -1 4
3 5 0 6 0 15 5 15 -1 6
3 4 1 5 1 17 5 17 -1 4
3 4 0 5 1 17 5 17 -1 6
1
end_operator
begin_operator
toggle-light room14 room15 room1
0
10
4 0 0 6 0 15 6 17 0 16 1 0
4 0 1 6 0 15 6 17 5 16 1 0
4 5 0 6 1 15 0 17 6 16 1 0
4 5 1 6 1 15 5 17 6 16 1 0
1 6 1 6 -1 0
1 6 0 6 -1 1
3 0 0 6 0 15 6 15 -1 0
3 0 1 6 0 15 6 15 -1 5
3 5 0 6 1 17 6 17 -1 0
3 5 1 6 1 17 6 17 -1 5
1
end_operator
begin_operator
toggle-light room15 room1 room2
0
10
4 0 0 7 0 15 0 17 7 16 1 0
4 0 0 7 1 15 0 17 6 16 1 0
4 0 1 6 0 15 7 17 0 16 1 0
4 0 1 6 1 15 6 17 0 16 1 0
1 0 1 0 -1 0
1 0 0 0 -1 1
3 0 0 7 1 15 0 15 -1 6
3 0 0 7 0 15 0 15 -1 7
3 0 1 6 1 17 0 17 -1 6
3 0 1 6 0 17 0 17 -1 7
1
end_operator
begin_operator
toggle-light room2 room3 room4
0
10
4 7 0 8 1 15 9 17 8 16 1 0
4 7 1 8 1 15 7 17 8 16 1 0
4 8 0 9 0 15 8 17 9 16 1 0
4 8 0 9 1 15 8 17 7 16 1 0
1 8 1 8 -1 0
1 8 0 8 -1 1
3 8 0 9 1 15 8 15 -1 7
3 8 0 9 0 15 8 15 -1 9
3 7 1 8 1 17 8 17 -1 7
3 7 0 8 1 17 8 17 -1 9
1
end_operator
begin_operator
toggle-light room3 room4 room5
0
10
4 8 0 9 1 15 10 17 9 16 1 0
4 8 1 9 1 15 8 17 9 16 1 0
4 9 0 10 0 15 9 17 10 16 1 0
4 9 0 10 1 15 9 17 8 16 1 0
1 9 1 9 -1 0
1 9 0 9 -1 1
3 9 0 10 1 15 9 15 -1 8
3 9 0 10 0 15 9 15 -1 10
3 8 1 9 1 17 9 17 -1 8
3 8 0 9 1 17 9 17 -1 10
1
end_operator
begin_operator
toggle-light room4 room5 room6
0
10
4 9 0 10 1 15 11 17 10 16 1 0
4 9 1 10 1 15 9 17 10 16 1 0
4 10 0 11 0 15 10 17 11 16 1 0
4 10 0 11 1 15 10 17 9 16 1 0
1 10 1 10 -1 0
1 10 0 10 -1 1
3 10 0 11 1 15 10 15 -1 9
3 10 0 11 0 15 10 15 -1 11
3 9 1 10 1 17 10 17 -1 9
3 9 0 10 1 17 10 17 -1 11
1
end_operator
begin_operator
toggle-light room5 room6 room7
0
10
4 10 0 11 1 15 12 17 11 16 1 0
4 10 1 11 1 15 10 17 11 16 1 0
4 11 0 12 0 15 11 17 12 16 1 0
4 11 0 12 1 15 11 17 10 16 1 0
1 11 1 11 -1 0
1 11 0 11 -1 1
3 11 0 12 1 15 11 15 -1 10
3 11 0 12 0 15 11 15 -1 12
3 10 1 11 1 17 11 17 -1 10
3 10 0 11 1 17 11 17 -1 12
1
end_operator
begin_operator
toggle-light room6 room7 room8
0
10
4 11 0 12 1 15 13 17 12 16 1 0
4 11 1 12 1 15 11 17 12 16 1 0
4 12 0 13 0 15 12 17 13 16 1 0
4 12 0 13 1 15 12 17 11 16 1 0
1 12 1 12 -1 0
1 12 0 12 -1 1
3 12 0 13 1 15 12 15 -1 11
3 12 0 13 0 15 12 15 -1 13
3 11 1 12 1 17 12 17 -1 11
3 11 0 12 1 17 12 17 -1 13
1
end_operator
begin_operator
toggle-light room7 room8 room9
0
10
4 12 0 13 1 15 14 17 13 16 1 0
4 12 1 13 1 15 12 17 13 16 1 0
4 13 0 14 0 15 13 17 14 16 1 0
4 13 0 14 1 15 13 17 12 16 1 0
1 13 1 13 -1 0
1 13 0 13 -1 1
3 13 0 14 1 15 13 15 -1 12
3 13 0 14 0 15 13 15 -1 14
3 12 1 13 1 17 13 17 -1 12
3 12 0 13 1 17 13 17 -1 14
1
end_operator
begin_operator
toggle-light room8 room9 room10
0
10
4 1 0 14 0 15 14 17 1 16 1 0
4 1 1 14 0 15 14 17 13 16 1 0
4 13 0 14 1 15 1 17 14 16 1 0
4 13 1 14 1 15 13 17 14 16 1 0
1 14 1 14 -1 0
1 14 0 14 -1 1
3 1 0 14 0 15 14 15 -1 1
3 1 1 14 0 15 14 15 -1 13
3 13 0 14 1 17 14 17 -1 1
3 13 1 14 1 17 14 17 -1 13
1
end_operator
begin_operator
toggle-light room9 room10 room11
0
10
4 1 0 2 0 15 1 17 2 16 1 0
4 1 0 2 1 15 1 17 14 16 1 0
4 1 1 14 0 15 2 17 1 16 1 0
4 1 1 14 1 15 14 17 1 16 1 0
1 1 1 1 -1 0
1 1 0 1 -1 1
3 1 0 2 0 15 1 15 -1 2
3 1 0 2 1 15 1 15 -1 14
3 1 1 14 0 17 1 17 -1 2
3 1 1 14 1 17 1 17 -1 14
1
end_operator
begin_operator
watch-fight room1
0
6
1 0 0 16 0 1
1 0 1 16 0 1
1 0 1 18 0 1
1 0 1 15 0 15
1 0 0 19 0 1
1 0 0 17 0 15
1
end_operator
begin_operator
watch-fight room10
0
6
1 1 0 16 0 1
1 1 1 16 0 1
1 1 1 18 0 1
1 1 1 15 1 15
1 1 0 19 0 1
1 1 0 17 1 15
1
end_operator
begin_operator
watch-fight room11
0
6
1 2 0 16 0 1
1 2 1 16 0 1
1 2 1 18 0 1
1 2 1 15 2 15
1 2 0 19 0 1
1 2 0 17 2 15
1
end_operator
begin_operator
watch-fight room12
0
6
1 3 0 16 0 1
1 3 1 16 0 1
1 3 1 18 0 1
1 3 1 15 3 15
1 3 0 19 0 1
1 3 0 17 3 15
1
end_operator
begin_operator
watch-fight room13
0
6
1 4 0 16 0 1
1 4 1 16 0 1
1 4 1 18 0 1
1 4 1 15 4 15
1 4 0 19 0 1
1 4 0 17 4 15
1
end_operator
begin_operator
watch-fight room14
0
6
1 5 0 16 0 1
1 5 1 16 0 1
1 5 1 18 0 1
1 5 1 15 5 15
1 5 0 19 0 1
1 5 0 17 5 15
1
end_operator
begin_operator
watch-fight room15
0
6
1 6 0 16 0 1
1 6 1 16 0 1
1 6 1 18 0 1
1 6 1 15 6 15
1 6 0 19 0 1
1 6 0 17 6 15
1
end_operator
begin_operator
watch-fight room2
0
6
1 7 0 16 0 1
1 7 1 16 0 1
1 7 1 18 0 1
1 7 1 15 7 15
1 7 0 19 0 1
1 7 0 17 7 15
1
end_operator
begin_operator
watch-fight room3
0
6
1 8 0 16 0 1
1 8 1 16 0 1
1 8 1 18 0 1
1 8 1 15 8 15
1 8 0 19 0 1
1 8 0 17 8 15
1
end_operator
begin_operator
watch-fight room4
0
6
1 9 0 16 0 1
1 9 1 16 0 1
1 9 1 18 0 1
1 9 1 15 9 15
1 9 0 19 0 1
1 9 0 17 9 15
1
end_operator
begin_operator
watch-fight room5
0
6
1 10 0 16 0 1
1 10 1 16 0 1
1 10 1 18 0 1
1 10 1 15 10 15
1 10 0 19 0 1
1 10 0 17 10 15
1
end_operator
begin_operator
watch-fight room6
0
6
1 11 0 16 0 1
1 11 1 16 0 1
1 11 1 18 0 1
1 11 1 15 11 15
1 11 0 19 0 1
1 11 0 17 11 15
1
end_operator
begin_operator
watch-fight room7
0
6
1 12 0 16 0 1
1 12 1 16 0 1
1 12 1 18 0 1
1 12 1 15 12 15
1 12 0 19 0 1
1 12 0 17 12 15
1
end_operator
begin_operator
watch-fight room8
0
6
1 13 0 16 0 1
1 13 1 16 0 1
1 13 1 18 0 1
1 13 1 15 13 15
1 13 0 19 0 1
1 13 0 17 13 15
1
end_operator
begin_operator
watch-fight room9
0
6
1 14 0 16 0 1
1 14 1 16 0 1
1 14 1 18 0 1
1 14 1 15 14 15
1 14 0 19 0 1
1 14 0 17 14 15
1
end_operator
0
