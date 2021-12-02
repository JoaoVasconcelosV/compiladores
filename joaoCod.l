%{
  //definições em C
  #include <string.h>
%}
  
  //definições regulares
COMENTARIO "//".*  
ESPAC0 [\ ]
TIPO {ESPAC0}?("inteiro"|"real"|"texto")
INI "ini"
FIM "fim"
INT [0-9]+
CHAR [a-zA-Z]+
VAR "&"({CHAR}|{INT})*","?
STRING \"[^\"]*\"
NUM [0-9]+\.?[0-9]*
ENTRADA "ler"
SAIDA "mostrar"
ENTRADATXT "lerString"
SAIDATXT "mostrarString"

IF "se"
ELSE "senao"
WHILE "enquanto"
INVALID (.)
ESCREVER "escrever"
QUEBRARLINHA "quebraLinha"

%%
  //definições  dos tokens
{ESCREVER} {
  return ESCREVER;
}

{INI} {
  printf("INICIOU O PROGRAMA\n");
  return INI;
}
{FIM} {
  printf("ENCERROU O PROGRAMA\n");
  return FIM;
}
{ENTRADA} {
  return ENTRADA;
}
{SAIDA} {
  return SAIDA;
  }
{ENTRADATXT} {
  return ENTRADATXT;
}
{SAIDATXT} {
  return SAIDATXT;
}
{IF} {
  return IF;
}
{ELSE} {
  return ELSE;
}
{WHILE} {
  return WHILE;
}

{QUEBRARLINHA} {
  return QUEBRARLINHA;
}

{VAR} {
	strcpy(yylval.str,yytext);
	return VAR;
}

{NUM} {
	yylval.flo = atof(yytext); 
	return NUM;
}
	

[-+()=/*^{};] {
	return *yytext;
	}
{STRING} {
    for(int x=0; x<strlen(yytext); x++){
        yytext[x] = yytext[x+1];
    }
    yytext[strlen(yytext)-1] = '\0';
    strcpy(yylval.str, yytext);
    return STRING;
}			

">" {yylval.fn = 1; return CMP; }
">=" {yylval.fn = 5; return CMP; }
"<" {yylval.fn = 2; return CMP; }
"<=" {yylval.fn = 6; return CMP; }
"<>" {yylval.fn = 3; return CMP; }
"==" {yylval.fn = 4; return CMP; }

{COMENTARIO} {;}
"\n" {;}
{INVALID} {;}
%%