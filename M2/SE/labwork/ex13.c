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

#define LED 1
#define GPIO_IN 2
#define ADC_IN 2

#define TRESHOLD 2500

// GPIODA
#define USER_BUT	0

void init_TIM4(){
	TIM4_CR1 = 0;
	TIM4_ARR = ARR;
	TIM4_PSC = PSC;
	TIM4_EGR = TIM_UG;
	TIM4_SR = 0;
	//not enabled yet
}

void handle_TIM4()  {
	ADC1_CR2 |= ADC_SWSTART;
}

void init_TIM4_interrupts(){
	DISABLE_IRQS;
	NVIC_ICER(TIM4_IRQ >> 5) = 1 << (TIM4_IRQ & 0x1f); //clear en register
	NVIC_IRQ(TIM4_IRQ) = (uint32_t)handle_TIM4;
	NVIC_IPR(TIM4_IRQ) = 0;
	NVIC_ICPR(TIM4_IRQ >> 5) = 1 << (TIM4_IRQ & 0x1f); //& 0b11111 to take only the first 5 bits 
	TIM4_DIER = TIM_UIE;
	NVIC_ISER(TIM4_IRQ >> 5) = 1 << (TIM4_IRQ & 0x1f);
	ENABLE_IRQS;

	TIM4_CR1 = TIM_CEN;
}

void handle_ADC(){
	printf("ADC FINITO\n");

	int value = ADC1_DR;
	printf("%d\n", value);
	GPIOD_ODR = ((value < TRESHOLD) ?  1 : 0 ) << LED;
	//ADC1_CR2 |= ADC_SWSTART;
}

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization
	GPIOD_MODER = REP_BITS(GPIOD_MODER, LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << LED);
	GPIOA_MODER = REP_BITS(GPIOA_MODER, GPIO_IN*2, 2, GPIO_MODER_ANA);
	ADC1_SQR3 = ADC_IN;
	ADC1_SQR1 = 0;
	ADC1_CR1 = 0;
	ADC1_CR2 = ADC_ADON;

	ADC1_CR1 = ADC_EOCIE;
	
	DISABLE_IRQS;
	NVIC_ICER(ADC_IRQ >> 5) = 1 << (ADC_IRQ & 0x1f);
	NVIC_IPR(ADC_IRQ) = 0; //prio
	NVIC_IRQ(ADC_IRQ) = (uint32_t)handle_ADC; 
	NVIC_ICPR(ADC_IRQ >> 5) = 1 << (ADC_IRQ & 0x1f);
	NVIC_ISER(ADC_IRQ >> 5) = 1 << (ADC_IRQ & 0x1f);
	ENABLE_IRQS;

	//ADC1_CR2 |= ADC_EXTSEL_T3TRGO | ADC_EXTEN_rise;	
	init_TIM4();
	init_TIM4_interrupts();

	// main loop
	printf("Endless loop!\n");
	//ADC1_CR2 |= ADC_SWSTART;
	while(1) {
	}

}


