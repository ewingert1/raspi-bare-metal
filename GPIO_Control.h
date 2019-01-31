/*
 * GPIO_Control.h
 *
 *  Created on: 20 févr. 2018
 *      Author: Emilien
 */

#ifndef GPIO_CONTROL_H_
#define GPIO_CONTROL_H_
#include <stdint.h>



typedef enum{OUTPUT=1,INPUT=0} InOut;
typedef enum{PULL_UP=2,PULL_DOWN=1} PULL_RES;
typedef enum{ON=1,OFF=0} LogicalLEVEL;
typedef enum{SYNCHRONOUS,ASYNCHRONOUS} Timed_Behaviour;
typedef enum{RISING_EDGE,FALLING_EDGE} Edge_Detection;

//extern uint32_t* gpio_add;




#endif /* GPIO_CONTROL_H_ */
