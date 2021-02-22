import 'dart:math';
import 'dart:io'; 

void main() {

int score=0;
int round= 1;

for( var i = 3; i >= 1; i-- ) 
{
Random random = new Random();
int randomNumber = random.nextInt(3)+(1); 

print (' ');
print ('Round $round:');
print (' ');
print('Papel, Gunting, Bato! Your choice?');
String choice= stdin.readLineSync().toUpperCase(); 

print ('--------------------');

   if(choice == 'BATO')
      {
        if(randomNumber==1)
        {
         print( '$choice vs GUNTING ');
          print ('You Win!');
          score = score+1;
        }
        else if(randomNumber==2)
        {
          print( '$choice vs BATO ');
          print ('Tie');
        }
        else
        {
          print( '$choice vs PAPEL ');
          print ('You Lose!');
        }
      }
  if(choice == 'GUNTING')
      {
        if(randomNumber==1)
        {
          print( '$choice vs GUNTING ');
          print ('Tie');
        }
        else if(randomNumber==2)
        {
          print( '$choice vs BATO ');
          print ('You Lose!');
        }
        else
        {
          print( '$choice vs PAPEL ');
          print ('You Win!');
          score=score+1;
        }
      }
if(choice == 'PAPEL')
      {
        if(randomNumber==1)
        {
          print( '$choice vs GUNTING' );
          print ('You Lose!');
        }
        else if(randomNumber==2)
        {
          print( '$choice vs BATO');
          print ('You Win!');
          score=score+1;
        }
        else
        {
          print( '$choice vs PAPEL');
          print ('Tie ');
        }
      }  

round=round+1;
print (' ');
print('[Your Score: $score]' );
print ('--------------------');
}
}
