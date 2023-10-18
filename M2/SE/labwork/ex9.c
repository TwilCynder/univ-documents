/* Embedded Systems - Exercise 8 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>


// GPIOD
#define LED_START	3
#define LED_NB		3

void initGPIOOut(led){
	GPIOD_MODER = REP_BITS(GPIOD_MODER, led * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << led);
}

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
	for (int i = LED_START; i < LED_NB + LED_START; i++){
		initGPIOOut(i);
	}

	// main loop
	printf("Endless loop!\n");

	int current_led = 0;
	while (1){
		if ((TIM4_SR & TIM_UIF)){
			TIM4_SR = 0;
			printf("Tick %d %d\n", current_led);
			if (current_led > -1){
				printf("%d\n", LED_START + current_led);
				GPIOD_BSRR = 1 << (LED_START + current_led);
			} else {
				printf("%d\n", (16 + LED_START - current_led - 1));
				GPIOD_BSRR = 1 << (16 + LED_START + LED_NB + current_led); 
			}
			current_led++;
			if (current_led >= LED_NB) current_led = -LED_NB;
		}
	}

}


