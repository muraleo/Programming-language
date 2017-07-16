/* THis is the scanner of recognizing 32-bit hexadecimal numbers
 * Because it is just 32-bit, so the range of the hexadecimal number
 * is from 0x0 to 0xffffffff.
 * so the patter of the number should be 0[xX](([0-9]|[a-f]|[A-F]){1,8})
 */

number 0[xX](([0-9]|[a-f]|[A-F]){1,8})

%%
{number}	printf("Hex number: %s \n", yytext);
.		printf("");
%%

main()
{
	printf("Please type the input:\n");
	yylex();
}
