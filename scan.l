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
not !
implies =>

main_func init

const_decl const
var_decl var

boolean True|False
string \"(\\.|[^"\\])*\"

if_stmt if
else_stmt else
while_stmt while

func_decl func
print_stmt print
return_stmt return



%%

\&\&                  printf("AND ");
\|\|                  printf("OR ");
{not}                 printf("NEGATION ");
{assign}              printf("ASSIGN ");
{equals}              printf("EQUALS ");
{implies}             printf("IMPLIES ");

{if_stmt}               printf("IF ");
{else_stmt}             printf("ELSE ");
{while_stmt}            printf("WHILE ");
{print_stmt}            printf("PRINT");

{const_decl}                 printf("CONST ");
{var_decl}                   printf("VAR ");

{lp}                  printf("LP ");
{rp}                  printf("RP ");
{lcb}                 printf("LCB ");
{rcb}                 printf("RCB ");

{func_decl}                  printf("FUNCTION ");
{return_stmt}                printf("RETURN ");

{boolean}             printf("BOOLEAN ");
{integer}             printf("INTEGER ");
{nl}                  printf("NL ");   // We need to add a way to hold line count later
{string}              printf("STRING ");
{comment}             printf("COMMENT ");
{space}               ;

%%
