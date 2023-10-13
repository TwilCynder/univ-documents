/* Embedded Systems - Exercise 2 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/io.h>
#include <stm32f4/tim.h>

// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

// GPIODA
#define USER_BUT	0

#define ARR 42000
#define PSC 999
#define BOUNCE_DELAY 2100 //100ms

int main() {
	printf("Starting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;

	// GPIO init

	GPIOA_MODER = REP_BITS(GPIOA_MODER, USER_BUT * 2, 2, GPIO_MODER_IN);
	GPIOA_PUPDR = REP_BITS(GPIOA_PUPDR, USER_BUT * 2, 2, GPIO_PUPDR_PD);
	GPIOD_MODER = REP_BITS(GPIOD_MODER, GREEN_LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << GREEN_LED);

	//TIM4_INIT
	TIM4_CR1 = 0;
	TIM4_ARR = ARR;
	TIM4_PSC = PSC; //counting 42000th of seconds
	TIM4_EGR = TIM_UG;
	TIM4_SR = 0;
	TIM4_CR1 = TIM_CEN;

	printf("Endless loop!!!!\n");
	int button_state = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT);
	int led_state = 0; 
	unsigned long pressed_date = 0;
	while(1) {
		int current = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT);

		if (current != button_state){
			if (current){
				pressed_date = TIM4_CNT;
				printf("PRESSED\n");
			} else{
				printf("Change detected\n");
				if (current == 0){
					//click finished
					//handling bounce
					printf("Current date : %d %d\n", TIM4_CNT, pressed_date);
					unsigned long current_date = TIM4_CNT;
					if ((current_date < pressed_date && (current_date + (ARR - pressed_date)) > BOUNCE_DELAY ) || (current_date >= BOUNCE_DELAY && current_date - BOUNCE_DELAY > pressed_date)){
						//ok alors cette condition est beauucoup plus longue que celle du TD, mais j'ai l'impression que celle du TD ne marcherait pas 
						//dans une situation où il y a eu un wrap depuis le dernier click et current est en train de s'approcher très près de last
						//(mais compliqué à tester alors dans le doute ...)

						led_state = 1 - led_state;
						GPIOD_ODR = led_state << GREEN_LED;
					}

				}
			}
			button_state = current;

		}

		
	}

}
