S -> B V A B V;
B -> /0/ [c := c * 2] B;
B -> /1/ [c := c * 2 + 1] B;
B -> /\x20/;
V [c > 0] -> /a/ V [c := c - 1];
V [c == 0] -> ;
A -> /HTTP/;
