#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]){

        //Set up the result and number for calculation
        int result = 1;
        long number = 0;
	char *endptr;
        //Check the input
                if (argc != 2){
                printf("Give an input\n");
                return 1;
        }
        //Convert the string to long
        number = strtol(argv[1], &endptr, 10);

        //Calculating the factorial
        for (int i = 1; i <= number; i++){
                result *= i;
        }

        printf("%d\n", result);
  return 0;
}
