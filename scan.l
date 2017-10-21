%option main
nl    \n
comment \/\/.*
space [ \t]*

lp \(
rp \)
lcb \{
rcb \}

assign \=
equals ==
greater >
less <
greaterequal >=
lessequal <=
notequals !=
not !
implies =>

main_func init

val_decl val
var_decl var

boolean True|False
string \"(\\.|[^"\\])*\"
integer [0-9]+

if_stmt if
elseif_stmt "else if"
else_stmt else
while_stmt while

func_decl func
rule_decl rule
print_stmt print
return_stmt return



%%

\&\&                  printf("AND ");
\|\|                  printf("OR ");
{not}                 printf("NEGATION ");
{assign}              printf("ASSIGN ");
{equals}              printf("EQUALS ");
{notequals}           printf("NOTEQUALS ");
{lessequal}           printf("LESSEQUAL ");
{greaterequal}        printf("GREATEREQUAL ");
{implies}             printf("IMPLIES ");

{if_stmt}               printf("IF ");
{else_stmt}             printf("ELSE ");
{elseif_stmt}           printf("ELSEIF ");
{while_stmt}            printf("WHILE ");
{print_stmt}            printf("PRINT");

{val_decl}                   printf("VAL ");
{var_decl}                   printf("VAR ");

{lp}                  printf("LP ");
{rp}                  printf("RP ");
{lcb}                 printf("LCB ");
{rcb}                 printf("RCB ");

{func_decl}                  printf("FUNCTION ");
{rule_decl}                  printf("RULE ");
{return_stmt}                printf("RETURN ");

{boolean}             printf("BOOLEAN ");
{integer}             printf("INTEGER ");
{nl}                  printf("NL ");   // We need to add a way to hold line count later
{string}              printf("STRING ");
{comment}             printf("COMMENT ");
{space}               ;

%%
