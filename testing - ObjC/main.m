//
//  main.m
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pessoa_Again.h"
#import "Rectangulo.h"
#import "pontoXY.h"
#import "externaL.h"
#import "mathz.h"

#define EVEN(x) x%2==0

//----- interface ----------------
@interface Pessoa : NSObject{
    NSString *nome;
    int idade;
}

-(void) print;
-(void) setName: (NSString*) a;
-(void) setAge: (int) b;
-(NSString*) nome;
-(int) idade;

@end


//----- implementation ----------------
@implementation Pessoa
-(void) print{
    NSLog(@"O meu nome é: %@, tenho %i anos", nome, idade);
}

-(void) setName:(NSString *) a{
    nome = a;
}

-(void) setAge:(int) b{
    idade = b;
}

-(NSString*) nome{
    return nome;
}

-(int) idade{
    return idade;
}

@end

void objecTs(){
    // exemplo, criar um objecto, etc etc...
    NSLog(@"\n\nTesting... ObjecTs!");
    Pessoa *eu = [[Pessoa alloc] init];
    
    NSLog(@"dados:");
    [eu setName: @"Jose Miguel Malaca"];
    [eu setAge: 28];
    
    [eu print];
}

void dataTypes(){
    // exemplo, data types...
    NSLog(@"\n\nTesting... daTa!");
    
    int i = 20;
    float f = 31.37;
    double d = 9.32e+12;
    char c = 'b';
    NSLog(@"print: %i, %f, %e, %c",i,f,d,c);
    
    int sum = 3 + 2 * 4;
    NSLog(@"sum = %i",sum);
    sum = (3 + 2) * 4;        
    NSLog(@"sum = %i",sum);        
    
    int m = 38 % 7;//modulo
    NSLog(@"m = %i",m); 
}

void conversOes(){
    // exemplo, conversões...
    NSLog(@"\n\nTesting... ConversÕes!");
    float f1 = 20.86;
    float f2;
    int i1;
    int i2 = 15, i3 = 10;
    
    i1 = f1;
    NSLog(@"i1 = f1 = %i",i1);
    
    f2 = i2 / i3;
    NSLog(@"f2 = i2 / i3 = %f",f2);
    
    f2 = f1 / i2;
    NSLog(@"f2 = f1 / i2 = %f",f2);
}

void typeCasting(){
    
    int i1 = 10/3;
    float f2 = (float) 10/3;
    
    NSLog(@"i1 = %i",i1);
    NSLog(@"f2 = %f",f2);
    NSLog(@"f2 = %.3f",f2);
    
    f2 = f2 + 10;
    NSLog(@"f2 = %.3f",f2);
    f2 += 10;
    NSLog(@"f2 = %.3f",f2);
}

void sCanf(){

    int userNum;
    
    NSLog(@"Escreve ai um numero: ");
    scanf("%i",&userNum);
    NSLog(@"é o %i, acertei... :P",userNum);
}

void lOOping(){
    
    int i = 0, userNum;
    
    NSLog(@"Escreve ai um numero: ");
    scanf("%i",&userNum);
    
    NSLog(@"fOr:");
    for (i=0; i<userNum; i=i+1){
        NSLog(@"i = %i",i);
    }
    
    i = 0;
    NSLog(@"whiLe:");
    while (i < userNum) {
        NSLog(@"i = %i",i);
        i += 1;
    }
    
    i = 0;
    NSLog(@"dO:");
    do {
        NSLog(@"i = %i",i);
        i += 1;
    }while (i < userNum);
    
}

void ifCondition(){
    
    int a , b;
    NSLog(@"Escreve ai um numero: ");
    scanf("%i",&a);
    NSLog(@"Escreve ai outro numero: ");
    scanf("%i",&b);
    
    if (a > b) {
        NSLog(@" a > b");
    }else {
        NSLog(@" a < b");
    }
    
    NSLog(@"outra vez... ");
    if (a > b || a == b) {
        NSLog(@" a > b ou é a = b");
    }else if( a < b){
        NSLog(@" a < b");
    }else{
        NSLog(@"existe este else ?...");
    }
}

void operadorCondicional(){
    
    int numero;
    NSLog(@"Escreve ai um numero: ");
    scanf("%i",&numero);
    
    numero == 0 ? NSLog(@"numero igual a 0...") : NSLog(@"numero diferente a 0...");
    
    numero ? NSLog(@"true") : NSLog(@"false");
    
    if(numero){
        NSLog(@"true again...");
    }else{
        NSLog(@"false again...");
    }
}

void sWitchCondition(){
    
    int numero;
    NSLog(@"Escreve ai um numero: ");
    scanf("%i",&numero);

    switch (numero) {
        case 1:
            NSLog(@"és 1...");
            break;
        case 5:
            NSLog(@"és 5...");
            break;
        case 10:
            NSLog(@"és 10...");
            break;            
        default:
            NSLog(@"és default?... :P");
            break;
    }
}

void ficheirosSeparados(){
    
    Pessoa_Again *me = [[Pessoa_Again alloc] init];

    me.nome = @"Jose Miguel Malaca";
    
    int numero;
    NSLog(@"Escreve ai um numero: ");
    scanf("%i",&numero);
    me.idade = numero;
    
    [me print: numero];
    
    NSLog(@"dados (outra vez...):");
    NSLog(@"o meu nome é: %@ e tenho %i anos", [me nome], [me idade]);
}

@interface filho : Pessoa
    -(void) printNome;

@end

@implementation filho

    -(void) printNome{
        NSLog(@"eu tb sou uma pessoa de nome... %@", nome);
    }

@end

void heranca(){
    
    //vou criar um objecto novo... este sera chamado de filho...
    filho *me = [[filho alloc] init];
    [me printNome];
    
    //again...
    [me print];
    
    //pk null ?...
}

void herancaContinua(){

    Rectangulo *rect = [[Rectangulo alloc] init];
    rect.altura = 50;
    rect.largura = 100;
    
    pontoXY *ponto = [[pontoXY alloc] init];
    [ponto setXY:10 :10];
    
    [rect setOrigem : ponto];
    [rect print];
    [rect.origem print];
    //e temos o nosso rectangulo com o seu ponto de origem
    
    
    //um tipo de dataType dinamico... pode ser igual a qualquer um dos anteriores...
    id tuna;
    NSLog(@"teste 1:");
    tuna = rect;
    [tuna print];
    
    NSLog(@"teste 2:");
    tuna = ponto;
    [tuna print];
}

void ExceptionHandlerTeste(){
    
    Rectangulo *rect = [[Rectangulo alloc] init];
    
    @try {
        [rect print];
    }
    @catch (NSException *exception) {
        NSLog(@"este metodo nao existe");
    }
    
}

int varGlobal = 1;

void varExterna(){
    
    //extern
    NSLog(@"var global: %i",varGlobal);
    
    externaL *t = [[externaL alloc] init];
    [t changeVar];

    NSLog(@"var global: %i",varGlobal);
    
    //static
    [t print];
    @try {
        //extern int myGlobalVar;
        //NSLog(@"-> %i",myGlobalVar);
    }
    @catch (NSException *exception) {
        NSLog(@"esta variavel e static...");
    }
}

void enumeration(){
    
    enum day {m=1, t=2, w=3, h=4, f=5};
    
    enum day today = 2;
    
    NSLog(@"today: %i",today);
    switch (today) {
        case m:
            NSLog(@"today = segunda");
            break;
        case t:
            NSLog(@"today = terca");
            break;
        case w:
            NSLog(@"today = quarta");
            break;
        case h:
            NSLog(@"today = quinta");
            break;
        case f:
            NSLog(@"today = sexta");
            break;

        default:
            break;
    }
    
}

@interface mathz (addMoreMethods)
    
-(int) sub: (int) a: (int) b;
-(int) mult: (int) a: (int) b;  

@end

@implementation mathz (addMoreMethods)

-(int) sub: (int) a: (int) b{
    return a-b;
}

-(int) mult: (int) a: (int) b{
    return a*b;
}

@end

void categorias(){

    mathz *calc = [[mathz alloc] init];
    
    [calc setNumeros:2 : 3];
    [calc print];
    
    [calc add];
    [calc print];
    
    //agora queriamos ter mais operacoes definidas... mas n temos acesso aos ficheiros.... como fazer... existem as categorias... adicionamos metodos a uma classe sem mexer nessa...
    //em cima... addMoreMethods :D
    
    calc.resultado = [calc mult:2 : 3];
    [calc print];
    
}

void objectosNS(NSString *tipo){
    
    if ([tipo compare:@"numero"] == 0) {
        //number
        NSNumber *num = [NSNumber numberWithInt: 1];
        NSNumber *num2 = [NSNumber numberWithInt: 0];
        NSLog(@"%i",(int) [num integerValue]);//parse ?...
        
        if ([num isEqualToNumber: num2] == true) {
            NSLog(@"zero");
        }
    }
    
    if ([tipo compare:@"string"] == 0) {
        //string
        NSString *msg = @"mekieee...";
        int x = [msg length];
        
        NSLog(@"%@ com tamanho %i", msg, x);
        msg = [msg uppercaseString];
        NSLog(@"%@ com tamanho %i", msg, x);
        
        msg = [msg substringToIndex:5];
        x = [msg length];
        NSLog(@"%@ com tamanho %i", msg, x);
        
        msg = @"mekieee...";
        msg = [msg substringWithRange: NSMakeRange(3, 4)];
        x = [msg length];
        NSLog(@"%@ com tamanho %i", msg, x);
        
        msg = @"mekieee...";
        NSRange rang = [msg rangeOfString:@"ieee"];
        NSLog(@"ieee esta na posicao %i com tamanho: %i",(int)rang.location, (int)rang.length);
        
        NSMutableString *mute = [NSMutableString stringWithString:msg];
        NSLog(@"%@", mute);
        
        [mute insertString:@":D" atIndex:8];
        NSLog(@"%@", mute);
        
        [mute appendString:@":P"];
        NSLog(@"%@", mute);
        
        [mute deleteCharactersInRange: NSMakeRange(3, 5)];
        NSLog(@"%@", mute);
        
        [mute setString:@"bye..."];
        NSLog(@"%@", mute);
    }
    
    if ([tipo compare:@"array"] == 0) {
        //array
        NSArray *a = [NSArray arrayWithObjects: @"apples",@"donuts",@"sweat",nil];
        NSLog(@"\n");
        NSLog(@"%@", [a objectAtIndex: 1]);
        for (int i=0; i < a.count ; i++) {
            NSLog(@"%@", [a objectAtIndex: i]);
        }
        NSLog(@"\n");
        
        NSMutableArray *mute2 = [NSMutableArray arrayWithArray:a];
        NSLog(@"again...");
        for (int i=0; i < mute2.count ; i++) {
            NSLog(@"%@", [mute2 objectAtIndex: i]);
        }
    }
    
    if ([tipo compare:@"dicionario"] == 0) {
        //dicionarios
        
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        
        [dic setObject:@"vesse da lua..." forKey:@"myDic"];
        
        NSLog(@"objecto = %@",[dic objectForKey:@"myDic"]);
        
    }
}

void directorias(){
    
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *path;
    
    //get current directory
    path = [manager currentDirectoryPath];
    NSLog(@"path: %@",path);
    
    //criar uma nova pasta
    if ([manager createDirectoryAtPath:@"newDir" withIntermediateDirectories:false attributes:nil error:NULL] == true) {
        NSLog(@"new dir criada...");
    }
    
    //rename
    [manager moveItemAtPath:@"newDir" toPath:@"directoria" error:NULL];
}

void files(){
    
    //utilizamos aqui o ficheiro criado com o nome: testFile.txt na pasta de debub...
    //para saberes a tua, clica em cima do teu ficheiro na pasta Produts e escolhe show in finder...
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *path = [mainBundle pathForResource:@"testFile" ofType:@"txt"];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    if([manager fileExistsAtPath: path] == false){
        NSLog(@"testFile.txt nao existe");
    }else {
        NSLog(@"testFile.txt existe");
        
        //o ficheiro existe... continuando...
        
    }
    
    //copy
    if ([manager copyItemAtPath:path toPath:@"newFile" error:NULL] == false) {
        NSLog(@"n consigo copiar o ficheiro");
    }
    
    //rename
    [manager moveItemAtPath:@"newFile" toPath:@"newFile2" error:NULL];
    
    //size
    NSDictionary *dic;
    if((dic = [manager attributesOfItemAtPath:@"newFile2" error:NULL]) != nil){
        NSLog(@"File is %i bytes size",[[dic  objectForKey: NSFileSize] intValue]);
    }

    //delete
    [manager removeItemAtPath:@"newFile" error:NULL];
    
    //print
    //escrever no primeiro...
    NSString *msg = [[NSString alloc] initWithString:@"testeFile.txt\n"];
    [msg writeToFile:@"testFile.txt" atomically:false encoding:NSUTF8StringEncoding error:NULL];
    //print
    NSLog(@"file content: %@",[NSString stringWithContentsOfFile:@"testFile.txt" encoding:NSUTF8StringEncoding error:NULL]);
    
    
    //read and write
    NSFileHandle *fIN, *fOUT;
    NSData *buffer;
    
    //ler
    fIN = [NSFileHandle fileHandleForReadingAtPath:@"testFile.txt"];
    
    //escrever
    fOUT = [NSFileHandle fileHandleForWritingAtPath:@"newFile2"];
    
    //apagar o que tiver no file desde o inicio( 0 )
    [fOUT truncateFileAtOffset:0];
    
    //ler entao o ficheiro para o buffer
    buffer = [fIN readDataToEndOfFile];
    
    //copiamos o que esta no ficheiro 
    [fOUT writeData:buffer];
    
    //print
    NSLog(@"file content2: %@",[NSString stringWithContentsOfFile:@"newFile2" encoding:NSUTF8StringEncoding error:NULL]);    
    
    [fIN closeFile];
    [fOUT closeFile];
}

//----- program ----------------
int main(int argc, const char * argv[]){

    @autoreleasepool {
               
        //dataTypes();
        
        //objecTs();
        
        //conversOes();
        
        //typeCasting();
        
        //sCanf();
        
        //lOOping();
        
        //ifCondition();
        
        //operadorCondicional();
        
        //sWitchCondition();
        
        //ate aqui temos tudo dentro do mesmo ficheiro... main.m... e se separarmos as coisas...
        
        //ficheirosSeparados();
        //coloquei aqui uns promenores... 
        //@property e @synthesize para substituir as funcoes set()/get()
        //e como adicionar parametros de entrada a uma funcao
        
        //heranca();
        
        //herancaContinua();
        //um promenor... herdas funcoes que nao queres... n podes apaga-las... que fazer... na classe que as herda, volta a escreve-la... Overriding :P
        
        //ExceptionHandlerTeste();
        
        //varExterna();
        
        //enumeration();
        
        //categorias();
        
        //uma cenita marada...
        //o #define
        if(EVEN(15)){
            NSLog(@"EVEN...");
        }
        //continuando...
        
        //criei um ficheiro chamado: list_Foundation
        //este serve para mostras que existem muitos tipos de objectos que já temos disponiveis...
        //exemplo...
        
        //objectosNS(@"numero");
        
        //objectosNS(@"string");
        
        //objectosNS(@"array");
        
        //objectosNS(@"dicionario");
        
        //directorias();

        files();
        
    }
    
    return 0;
}

