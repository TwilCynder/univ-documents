/* Embedded Systems - Exercise 13 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>
#include <stm32f4/adc.h>


// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

#define ARR 42000
#define PSC 999

#define LED 3
#define GPIO_IN 3
#define ADC_IN 3

// GPIODA
#define USER_BUT	0

void init_TIM3(){
	TIM3_CR1 = 0;
	TIM3_ARR = ARR;
	TIM3_PSC = PSC;
	TIM3_EGR = TIM_UG;
	TIM3_SR = 0;
	//not enabled yet
}

void handle_ADC(){
	printf("ADC FINITO\n");
	if (ADC1_SR & ADC_EOC){
		printf("%d\n", ADC1_DR);
	}
	NVIC_ICPR(EXTI0_IRQ) = 1 << (EXTI0_IRQ & 0x1f);
}

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM3EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization
	GPIOA_MODER = REP_BITS(GPIOA_MODER, GPIO_IN*2, 2, GPIO_MODER_ANA);
	ADC1_SQR3 = ADC_IN;
	ADC1_SQR1 = 0;
	ADC1_CR1 = 0;
	ADC1_CR2 = ADC_ADON;

	ADC1_CR1 = ADC_EOCIE;


	init_TIM3();
	TIM3_CR1 = TIM_CEN;
	
	DISABLE_IRQS;
	NVIC_ICER(ADC_IRQ >> 5) = 1 << (ADC_IRQ & 0x1f);
	NVIC_IPR(ADC_IRQ) = 0; //prio
	NVIC_IRQ(ADC_IRQ) = (uint32_t)handle_ADC; 
	NVIC_ICPR(ADC_IRQ >> 5) = 1 << (ADC_IRQ & 0x1f);
	NVIC_ISER(ADC_IRQ >> 5) = 1 << (ADC_IRQ & 0x1f);
	ENABLE_IRQS;

	ADC1_CR2 |= ADC_EXTSEL_T3TRGO;

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


