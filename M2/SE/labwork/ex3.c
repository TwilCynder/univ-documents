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

	GPIOA_MODER = REP_BITS(GPIOA_MODER, USER_BUT, 2, GPIO_MODER_IN);
	GPIOD_MODER = REP_BITS(GPIOD_MODER, GREEN_LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << GREEN_LED);

	printf("Endless loop!!!!\n");
	int button_state = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT);
	int led_state = 0;
	while(1) {
		int current = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT);
		printf("Current %d %d\n", current, button_state);
		if (current != button_state){
			printf("Change detected\n");
			button_state = current;
			printf("State : %d\n", led_state);
			if (current == 0){
				led_state = 1 - led_state;
				GPIOD_ODR = led_state << GREEN_LED;
			}
		}

		
	}

}
