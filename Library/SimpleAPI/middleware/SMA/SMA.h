#ifndef _SMA_H_
#define _SMA_H_

#ifdef __cplusplus
extern "C" {
#endif

void SMAGetData(char* sensor, char** output, int *len);
int RGB_LEDControl(int color);
int RGB_LEDStatus(void);
 
#ifdef __cplusplus
}
#endif
 
#endif//_SMA_H_
