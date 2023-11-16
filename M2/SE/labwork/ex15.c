/* Embedded Systems - Exercise 15 */

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

#define PSC 13 //14 - 1
#define ARR 60000
 
#define SERVO_RANGE (ARR / 20)
#define SERVO_OFFSET (ARR / 20)

#define OUT_PIN 6

//x de 0 à 1
void set_servo(int x){
	TIM3_CCR1 = SERVO_OFFSET + (SERVO_RANGE * x / 256);
}

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM3EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization
	GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * OUT_PIN, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * OUT_PIN, 4, 2);

	TIM3_CR1 = 0;
	TIM3_ARR = ARR;
	TIM3_PSC = PSC;
	TIM3_EGR = TIM_UG;
	TIM3_CCMR1 = TIM_CCS1S_OUT|TIM_OC1M_PWM1;
	TIM3_CCER = TIM_CC1E | TIM_CC1NP;
	set_servo(0.0);
	TIM3_SR = 0;
	TIM3_CR1 = TIM_CEN | TIM_ARPE;

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


