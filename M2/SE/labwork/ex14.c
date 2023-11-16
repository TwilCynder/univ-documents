/* Embedded Systems - Exercise 12 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>
#include <stm32f4/adc.h>

#define GPIO_IN 2
#define ADC_IN 2

#define LED_NB 4
const int leds[] = {1, 3, 5, 7};

#define MAX_VALUE 4096
#define INCREMENT (MAX_VALUE / (LED_NB + 1))

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization

	GPIOA_MODER = REP_BITS(GPIOA_MODER, GPIO_IN*2, 2, GPIO_MODER_ANA);
	ADC1_SQR3 = ADC_IN;
	ADC1_SQR1 = 0;
	ADC1_CR1 = 0;
	ADC1_CR2 = ADC_ADON | ADC_SWSTART;

	for (int i = 0; i < LED_NB; i++){
		GPIOD_MODER = REP_BITS(GPIOD_MODER, leds[i] * 2, 2, GPIO_MODER_OUT);
		GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << leds[i]);
	}

	// main loop
	printf("Endless loop!\n");
	while(1) {
		ADC1_CR2 |= ADC_SWSTART;
		while((ADC1_SR & ADC_EOC) == 0);
		int value = ADC1_DR;
		printf("%d\n", value);
	
		int treshold = INCREMENT;
		for (int i = 0; i < LED_NB; i++){
			GPIOD_BSRR = 1 << (leds[i] + (value > treshold ? 0 : 16));
			treshold += INCREMENT;
		}
	}
}


