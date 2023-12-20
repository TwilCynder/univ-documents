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

#define PWM_PSC 13 //14 - 1
#define PWM_ARR 60000

#define ANGLE_MIN 20
#define ANGLE_MAX 220

#define TIM_PSC 999
#define TIM_ARR 42000 / ((ANGLE_MAX - ANGLE_MIN) / 2) //interrupt every 256th of a second

#define SERVO_RANGE (PWM_ARR / 20)
#define SERVO_OFFSET (PWM_ARR / 20)

#define OUT_PIN 6


//x de 0 à 255
void set_servo(int x){
	TIM3_CCR1 = SERVO_OFFSET + ((SERVO_RANGE * x) / 256);
	printf("%d\n", SERVO_OFFSET + ((SERVO_RANGE * x) / 256));
}

void init_TIM3(){
	TIM3_CR1 = 0;
	TIM3_ARR = PWM_ARR;
	TIM3_PSC = PWM_PSC;
	TIM3_EGR = TIM_UG;
	TIM3_CCMR1 = TIM_CCS1S_OUT|TIM_OC1M_PWM1;
	TIM3_CCER = TIM_CC1E | TIM_CC1NP;
	set_servo(0);
	TIM3_SR = 0;
	TIM3_CR1 = TIM_CEN | TIM_ARPE;
}

void init_TIM4(){
	TIM4_CR1 = 0;
	TIM4_ARR = TIM_ARR;
	TIM4_PSC = TIM_PSC;
	TIM4_EGR = TIM_UG;
	TIM4_SR = 0;
	//not enabled yet
}

const int min = 20;
const int max = 220;

const range = max - min;
void handle_TIM4()  {
	static int current_state = min;
	static int increment = 1;

	//set_servo(current_state);

	if ((TIM4_SR & TIM_UIF) != 0){
		TIM4_SR = 0;
		printf("INTERRUPT %d %d\n", current_state, increment);
		set_servo(min + current_state);
		//current_state = range - current_state;
		
		//current_state += 1;
		//if (current_state > max) current_state = min;
		
		current_state += increment;
		if (current_state > max || current_state < min) increment = -increment;
		
		NVIC_ICPR(TIM4_IRQ) = 1 << (TIM4_IRQ & 0x1f);
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
	RCC_APB1ENR |= RCC_TIM3EN;
	RCC_APB1ENR |= RCC_TIM4EN;
	RCC_APB2ENR |= RCC_ADC1EN;

	// initialization
	GPIOA_MODER = REP_BITS(GPIOA_MODER, 2 * OUT_PIN, 2, GPIO_MODER_ALT);
    GPIOA_AFRL = REP_BITS(GPIOA_AFRL, 4 * OUT_PIN, 4, 2);


	init_TIM3();
	init_TIM4();
	init_TIM4_interrupts();

	//set_servo(200);

	// main loop
	printf("Endless loop!\n");
	while(1) {
	}

}


