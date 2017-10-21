%option main

nl    \n
comment \/\/.*
space [ \t]*
main_func init
integer [0-9]+
dreal        ([0-9]*\.[0-9]+)
ereal        ([0-9]*\.[0-9]+[Ee][+-]?[0-9]+)
real         {dreal}|{ereal}
%%

T      printf("TRUE");
F      printf("FALSE");
\&\&      printf("AND");
\|\|     printf("OR");
\'     printf("NEGATION");
\=      printf("ASSIGN");
while  printf("WHILE");
var       printf("VAR"); 
if        printf("IF");
else      printf("ELSE");
elseif    printf("<ELSEIF>");
return    printf("RETURN");
rule   printf("RULE");
=>     printf("IMPLIES");
==     printf("EQUALS");
\(     printf("LP");
\)     printf("RP");
\{     printf("LCB");
\}     printf("RCB");
{integer} printf("INTEGER");
{real}   printf("REAL");
{nl}      printf("NL");//We need to add a way to hold line count later 
\"(\\.|[^"\\])*\"     printf("STRING");
{comment}  printf("COMMENT");
{space} ;
.     {
     printf("%s",yytext);
     printf(":  Is An Unknown Operator");
     exit(-1);
}
