/* Embedded Systems - Exercise 15 */

#include <tinyprintf.h>
#include <stm32f4/rcc.h>
#include <stm32f4/gpio.h>
#include <stm32f4/nvic.h>
#include <stm32f4/exti.h>
#include <stm32f4/syscfg.h>
#include <stm32f4/tim.h>
#include <stm32f4/adc.h>


// GPIOA
#define M_1 0 //sur tim5_ch1
#define M_1 2 //sur tim5_ch2
#define M2_1 6 //sur tim3_ch1
#define M2_2 7 //sur tim3_ch2

#define PWM_PSC 13 //14 - 1
#define PWM_ARR 60000

#define TIM_PSC 999
#define TIM_ARR 42000 //interrupt every 256th of a second


void reset_speed_m1(){
    TIM5_CCR1 = 0;
    TIM5_CCR2 = 0;
}

void reset_speed_m2(){
    TIM3_CCR1 = 0;
    TIM3_CCR2 = 0;
}

//x de 0 à 255
void set_speed_m2_positive(int x){
	TIM3_CCR1 = PWM_ARR * x / 256;
    TIM3_CCR2 = 0;
}

void set_speed_m2_negative(int x){
	TIM3_CCR1 = PWM_ARR * x / 256;
    TIM3_CCR2 = 0;
}

void init_m1(){
	TIM5_CR1 = 0;
	TIM5_ARR = PWM_ARR;
	TIM5_PSC = PWM_PSC;
	TIM5_EGR = TIM_UG;
	TIM5_CCMR1 = TIM_CCS1S_OUT|TIM_OC1M_PWM1;
	TIM5_CCER = TIM_CC1E | TIM_CC1NP;
	reset_speed_m1();
	TIM5_SR = 0;
	TIM5_CR1 = TIM_CEN | TIM_ARPE;
}

void init_m2(){
	TIM3_CR1 = 0;
	TIM3_ARR = PWM_ARR;
	TIM3_PSC = PWM_PSC;
	TIM3_EGR = TIM_UG;
	TIM3_CCMR1 = TIM_CCS1S_OUT|TIM_OC1M_PWM1;
	TIM3_CCER = TIM_CC1E | TIM_CC1NP;
	reset_speed_m2();
	TIM3_SR = 0;
	TIM3_CR1 = TIM_CEN | TIM_ARPE;
}

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM3EN;
	RCC_APB1ENR |= RCC_TIM4EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization
	GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * M2_1, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * M2_1, 4, 2);
    GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * M2_2, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * M2_2, 4, 2);

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


