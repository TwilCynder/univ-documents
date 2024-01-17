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
#define MR_F 0 //sur tim5_ch1
#define MR_B 1 //sur tim5_ch2
#define ML_F 6 //sur tim3_ch1
#define ML_B 7 //sur tim3_ch2

#define PWM_PSC 13 //14 - 1
#define PWM_ARR 60000

#define TIM_PSC 999
#define TIM_ARR 42000 //interrupt every 256th of a second

#define MAX_SPEED 256 //puissance de 2 de préférence

inline void reset_speed_mr(){
    TIM5_CCR1 = 0;
    TIM5_CCR2 = 0;
}

inline void reset_speed_ml(){
    TIM3_CCR1 = 0;
    TIM3_CCR2 = 0;
}

inline void reset_speed(){
	reset_speed_ml();
	reset_speed_mr();
}

//x de 0 à MAX_SPEED-1
void set_speed_mr_positive(int x){
	TIM5_CCR1 = PWM_ARR * x / MAX_SPEED;
    TIM5_CCR2 = 0;
}

void set_speed_mr_negative(int x){
	TIM5_CCR1 = 0;
    TIM5_CCR2 = PWM_ARR * x / MAX_SPEED;
}

void set_speed_ml_positive(int x){
	TIM3_CCR1 = PWM_ARR * x / MAX_SPEED;
    TIM3_CCR2 = 0;
}

void set_speed_ml_negative(int x){
	printf("SET SPEED NEGATIVE %d\n", PWM_ARR * x / MAX_SPEED);
	TIM3_CCR1 = 0;
    TIM3_CCR2 = PWM_ARR * x / MAX_SPEED;
}

//x de -MAX_SPEED+1 à MAX_SPEED-1
void set_speed_mr(int x){
	if (x < 0){
		set_speed_mr_negative(-x);
	} else {
		set_speed_mr_positive(x);
	}
}

void set_speed_ml(int x){
	if (x < 0){
		set_speed_ml_negative(-x);
	} else {
		set_speed_ml_positive(x);
	}
}

void turn_left(int x){
	set_speed_ml_negative(x);
	set_speed_mr_positive(x);
}

void turn_right(int x){
	set_speed_mr_negative(x);
	set_speed_ml_positive(x);
}

void init_mr(){
	TIM5_CR1 = 0;
	TIM5_ARR = PWM_ARR;
	TIM5_PSC = PWM_PSC;
	TIM5_EGR = TIM_UG;
	TIM5_CCMR1 = TIM_CCS1S_OUT|TIM_OC1M_PWM1 | TIM_CCS2S_OUT|TIM_OC2M_PWM1;
	TIM5_CCER = TIM_CC1E|TIM_CC1NP | TIM_CC2E|TIM_CC2NP;
	reset_speed_mr();
	TIM5_SR = 0;
	TIM5_CR1 = TIM_CEN | TIM_ARPE;
}

void init_ml(){
	TIM3_CR1 = 0;
	TIM3_ARR = PWM_ARR;
	TIM3_PSC = PWM_PSC;
	TIM3_EGR = TIM_UG;
	TIM3_CCMR1 = TIM_CCS1S_OUT|TIM_OC1M_PWM1 | TIM_CCS2S_OUT|TIM_OC2M_PWM1;
	TIM3_CCER = TIM_CC1E|TIM_CC1NP | TIM_CC2E|TIM_CC2NP;
	reset_speed_ml();
	TIM3_SR = 0;
	TIM3_CR1 = TIM_CEN | TIM_ARPE;
}

int main() {
	printf("\nStarting...\n");

	// RCC init
	RCC_AHB1ENR |= RCC_GPIOAEN;
	RCC_AHB1ENR |= RCC_GPIODEN;
	RCC_APB1ENR |= RCC_TIM3EN;
	RCC_APB1ENR |= RCC_TIM5EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization
	GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * MR_F, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * MR_F, 4, 2);
    GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * MR_B, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * MR_B, 4, 2);

	GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * ML_F, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * ML_F, 4, 2);
    GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * ML_B, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * ML_B, 4, 2);

	init_ml();
	init_mr();
	turn_right(50);

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


