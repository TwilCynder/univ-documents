/* Embedded Systems - Exercise 2 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/io.h>


// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

// GPIODA
#define USER_BUT	0


int main() {
	printf("Starting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;

	// GPIO init

	GPIOA_MODER = REP_BITS(GPIOA_MODER, USER_BUT * 2, 2, GPIO_MODER_IN);
	GPIOA_PUPDR = REP_BITS(GPIOA_PUPDR, USER_BUT * 2, 2, GPIO_PUPDR_PD);
	GPIOD_MODER = REP_BITS(GPIOD_MODER, GREEN_LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << GREEN_LED);

	printf("Endless loop!!!!\n");
	while(1) {
		GPIOD_ODR = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT) << GREEN_LED;
	}

}
