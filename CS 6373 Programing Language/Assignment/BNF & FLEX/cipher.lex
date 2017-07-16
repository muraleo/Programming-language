/* This is the caeser cipher*/

%%
[a-w]	printf("%c", yytext[0]+3);
[x-z]	printf("%c", yytext[0]-23);
[A-W]	printf("%c", yytext[0]+3);
[X-Z]	printf("%c", yytext[0]-23);
%%

main()
{
	printf("Please type the input:\n");
	yylex();
}
