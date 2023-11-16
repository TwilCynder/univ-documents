/* Embedded Systems - Exercise 10 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>


// GPIOD
#define LED	5

// GPIODA
#define USER_BUT	0


int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;

	// GPIO init

	GPIOA_MODER = REP_BITS(GPIOA_MODER, USER_BUT * 2, 2, GPIO_MODER_IN);
	GPIOA_PUPDR = REP_BITS(GPIOA_PUPDR, USER_BUT * 2, 2, GPIO_PUPDR_PD);
	GPIOD_MODER = REP_BITS(GPIOD_MODER, LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << LED);

	printf("Endless loop!!!!\n");
	while(1) {
		printf("%d\n", (GPIOA_IDR & (1 << USER_BUT)));
		GPIOD_ODR = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT) << LED;
	}
}


