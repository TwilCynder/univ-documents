/* Embedded Systems - Exercise 6 */


#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/tim.h>
#include <stm32f4/nvic.h>

// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

// GPIODA
#define USER_BUT	0

#define ARR 42000
#define PSC 499

void init_TIM4(){
	TIM4_CR1 = 0;
	TIM4_ARR = ARR;
	TIM4_PSC = PSC;
	TIM4_EGR = TIM_UG;
	TIM4_SR = 0;
	//not enabled yet
}

void init_GPIO(){
	GPIOD_MODER = REP_BITS(GPIOD_MODER, GREEN_LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << GREEN_LED);
}

void handle_TIM4()  {
	printf("INTERRUPT %d\n", (GPIOD_ODR & (1 << GREEN_LED) ));

	if ((TIM4_SR & TIM_UIF) != 0){

		TIM4_SR = 0;
		NVIC_ICPR(TIM4_IRQ) = 1 << (TIM4_IRQ & 0x1f);

		GPIOD_ODR = (!(GPIOD_ODR & (1 << GREEN_LED) ) ) << GREEN_LED;
	}

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

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;

	init_GPIO();
	init_TIM4();
	init_TIM4_interrupts();

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


