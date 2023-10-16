/* Embedded Systems - Exercise 1 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/tim.h>

// GPIOD
#define GREEN_LED	12
#define ORANGE_LED	13
#define RED_LED		14
#define BLUE_LED	15

// GPIODA
#define USER_BUT	0

#define DEBOUNCE_ARR 42000
#define DEBOUNCE_PSC 999
#define DEBOUNCE_DELAY 2100

#define DELAY_VALUES_NB 3
const int delays[DELAY_VALUES_NB] = {42000, 21000, 10500};

void set_delay_value(int index){
	TIM4_ARR = delays[index];
}

void next_delay_value(){
	static unsigned int index = 0;

	set_delay_value(index);

	//incrementing at the end so we can use this at initialization so we don't ever have to call set_delay_value or assign ARR manually which really isn't actually a problem for a program this small but OH WELL
	index++;
	if (index >= DELAY_VALUES_NB){
		index = 0;
	}
}

int main() {
	printf("Starting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM4EN;
	RCC_APB1ENR |= RCC_TIM3EN;

	// GPIO init
	GPIOA_MODER = REP_BITS(GPIOA_MODER, USER_BUT * 2, 2, GPIO_MODER_IN);
	GPIOA_PUPDR = REP_BITS(GPIOA_PUPDR, USER_BUT * 2, 2, GPIO_PUPDR_PD);
	GPIOD_MODER = REP_BITS(GPIOD_MODER, GREEN_LED * 2, 2, GPIO_MODER_OUT);
	GPIOD_OTYPER = GPIOD_OTYPER & ~ (1 << GREEN_LED);

	//TIM4_INIT
	TIM4_CR1 = 0;
	next_delay_value();
	TIM4_PSC = 999; //counting 42000th of seconds
	TIM4_EGR = TIM_UG;
	TIM4_SR = 0;
	TIM4_CR1 = TIM_CEN | TIM_ARPE;

	//TIM3_INIT (POUR LE BOUNCE)
	TIM3_CR1 = 0;
	TIM3_ARR = 
	TIM3_PSC = 999; //counting 42000th of seconds
	TIM3_EGR = TIM_UG;
	TIM3_SR = 0;
	TIM3_CR1 = TIM_CEN | TIM_ARPE;

	printf("Endless loop!\n");
	
	while(1) {

		//j'aurais pu faire une variable led_state comme à l'exo précédent, mais j'aime la diversité
		
		GPIOD_ODR = (!(GPIOD_ODR & (1 << GREEN_LED) ) ) << GREEN_LED;

		printf("%d\n", (GPIOD_ODR & (1 << GREEN_LED)));

		int button_state = 0;
		int pressed_date = 0;
		while ((TIM4_SR & TIM_UIF) == 0){
			int current = ((GPIOA_IDR & (1 << USER_BUT)) >> USER_BUT);

			if (current != button_state){
				if (current){
					pressed_date = TIM4_CNT;
				} else{
					if (current == 0){
						//handling bounce
						unsigned long current_date = TIM4_CNT;
						if ((current_date < pressed_date && (current_date + (DEBOUNCE_ARR - pressed_date)) > DEBOUNCE_DELAY ) || (current_date >= DEBOUNCE_DELAY && current_date - DEBOUNCE_DELAY > pressed_date)){

							next_delay_value();
						}

					}
				}
				button_state = current;
			}

		}

		TIM4_SR = 0;

	}

}
