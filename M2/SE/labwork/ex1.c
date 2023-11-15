/* Embedded Systems - Exercise 1 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/io.h>



// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

// GPIOA
#define USER_BUT	0

int main() {
	printf("Starting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIODEN;
		
	// GPIO init

	printf("Endless loop!\n");

	for (int i = GREEN_LED; i <= BLUE_LED; i++){
		GPIOD_MODER = REP_BITS(GPIOD_MODER, i * 2, 2, GPIO_MODER_OUT);
		GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << i);
	}

	GPIOD_BSRR = 1 << GREEN_LED | 1 << ORANGE_LED;

	//GPIOD_MODER = 

	while(1) {
		for (int i = GREEN_LED; i <= BLUE_LED; i++){
			GPIOD_BSRR = 1 << i;
			for (int j = 0; j < 9000000; j++){
				NOP;
			}
			GPIOD_BSRR = 1 << (i + 16);
		}
	}

}