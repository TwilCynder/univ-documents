/* Embedded Systems - Exercise 7 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>


// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

// GPIODA
#define USER_BUT	0

void handle_button() {
	printf("INTERUPTIONNE\n");
	EXTI_PR |= 1 << 0;
	NVIC_ICPR(EXTI0_IRQ) = 1 << (EXTI0_IRQ & 0x1f);

	GPIOD_ODR = (!(GPIOD_ODR & (1 << GREEN_LED) ) ) << GREEN_LED;
}

void init_interrupt(){
	DISABLE_IRQS;
	SYSCFG_EXTICR1 = REP_BITS(SYSCFG_EXTICR1, 0, 4, 0);
	EXTI_FTSR |= 1 << 0;
	EXTI_IMR |= 1 << 0;
	EXTI_PR |= 1 << 0;

	NVIC_ICER(EXTI0_IRQ >> 5) = 1 << (EXTI0_IRQ & 0x1f); //clear en register
	NVIC_IRQ(EXTI0_IRQ) = (uint32_t)handle_button;
	NVIC_IPR(EXTI0_IRQ) = 0;
	NVIC_ICPR(EXTI0_IRQ >> 5) = 1 << (EXTI0_IRQ & 0x1f); //& 0b11111 to take only the first 5 bits 
	NVIC_ISER(EXTI0_IRQ >> 5) = 1 << (EXTI0_IRQ & 0x1f);
	ENABLE_IRQS;
}

void init_GPIO(){
	GPIOA_MODER = REP_BITS(GPIOA_MODER, USER_BUT * 2, 2, GPIO_MODER_IN);
	GPIOA_PUPDR = REP_BITS(GPIOA_PUPDR, USER_BUT * 2, 2, GPIO_PUPDR_PD);
	GPIOD_MODER = REP_BITS(GPIOD_MODER, GREEN_LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << GREEN_LED);
}

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;

	init_GPIO();
	init_interrupt();
	

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


