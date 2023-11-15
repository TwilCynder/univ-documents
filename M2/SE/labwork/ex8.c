/* Embedded Systems - Exercise 8 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>


// GPIOD
#define LED	5


int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;

	// initialization

	//TIM4_INIT
	TIM4_CR1 = 0;
	TIM4_ARR = 21000;
	TIM4_PSC = 999; //counting 42000th of seconds
	TIM4_EGR = TIM_UG;
	TIM4_SR = 0;
	TIM4_CR1 = TIM_CEN | TIM_ARPE;

	//INIT GPIO
	GPIOD_MODER = REP_BITS(GPIOD_MODER, LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << LED);

	// main loop
	printf("Endless loop!\n");
	while (1){
		if ((TIM4_SR & TIM_UIF)){
			GPIOD_ODR = (!(GPIOD_ODR & (1 << LED) ) ) << LED;
			TIM4_SR = 0;
		}
	}

}


