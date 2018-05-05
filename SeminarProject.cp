#line 1 "E:/pic18f4550/SeminarProject.c"
#line 15 "E:/pic18f4550/SeminarProject.c"
extern sbit DIO;
extern sbit RCLK;
extern sbit SCLK;

sbit DIO at PORTA.B0;
sbit RCLK at PORTA.B1;
sbit SCLK at PORTA.B2;
unsigned char code LED_0F[] =
{
 0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xFF
};

volatile int temh,temm,tems,temyear,temmonth,temday;
volatile int cTime,cMode,cSet,cUp,cDown,cBlink;
volatile int fMode,fSet,fUp,fDown;
volatile int hour,minute,second;
volatile int year,month,day;
volatile int pos;
volatile int mode;
volatile int setmode;
volatile int fsync;
int i;
int j;
char uart_rd;
int sync_time[]={0,0,0,0,0,0};



void LED_OUT(unsigned char X)
{
 unsigned char i;

 for(i=8;i>=1;i--)
 {
 if (X&0x80) DIO=1; else DIO=0;
 X<<=1;
 SCLK = 0;
 SCLK = 1;
 }
}

void LED_Display ()
{

 LED_OUT(LED_0F[8]);
 LED_OUT(0x01);

 RCLK = 0;
 RCLK = 1;


 LED_OUT(LED_0F[8]);
 LED_OUT(0x02);

 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[8]);
 LED_OUT(0x04);

 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[4]);
 LED_OUT(0x08);

 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[5]);
 LED_OUT(0x10);

 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[6]);
 LED_OUT(0x20);

 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[7]);
 LED_OUT(0x40);

 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[8]);
 LED_OUT(0x80);

 RCLK = 0;
 RCLK = 1;
}

void DisplayClock(int th,int tm,int ts)
{
 if(th>=0 && th<24 && tm>=0 && tm<60 && ts>=0 && ts<60)
 {
 LED_OUT(LED_0F[th/10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[th%10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tm/10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tm%10]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[ts/10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[ts%10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 else
 {
 if(th>=24||th<0)
 {
 LED_OUT(LED_0F[10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tm/10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tm%10]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[ts/10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[ts%10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;

 }
 else if(tm>=60||tm<0)
 {
 LED_OUT(LED_0F[th/10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[th%10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[ts/10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[ts%10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 else if(ts>=60||ts<0)
 {
 LED_OUT(LED_0F[th/10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[th%10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tm/10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tm%10]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 }
}

void DisplayCalendar(int tyear,int tmonth,int tday)
{
 if(tyear>=0 && tmonth>0 && tmonth<=12 && tday>0 &&tday<=31)
 {
 LED_OUT(LED_0F[tday/10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tday%10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tmonth/10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tmonth%10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tyear/1000]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[(tyear/100)%10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[(tyear/10)%10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tyear%10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 else
 {
 if(tday<=0 || tday>31)
 {
 LED_OUT(LED_0F[10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tmonth/10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tmonth%10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tyear/1000]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[(tyear/100)%10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[(tyear/10)%10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tyear%10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 else if(tmonth<=0 || tmonth>12)
 {
 LED_OUT(LED_0F[tday/10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tday%10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tyear/1000]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[(tyear/100)%10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[(tyear/10)%10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tyear%10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 else if(tyear<0)
 {
 LED_OUT(LED_0F[tday/10]);
 LED_OUT(0x80);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tday%10]);
 LED_OUT(0x40);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[tmonth/10]);
 LED_OUT(0x20);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[tmonth%10]);
 LED_OUT(0x10);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x08);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x04);
 RCLK = 0;
 RCLK = 1;

 LED_OUT(LED_0F[10]);
 LED_OUT(0x02);
 RCLK = 0;
 RCLK = 1;
 LED_OUT(LED_0F[10]);
 LED_OUT(0x01);
 RCLK = 0;
 RCLK = 1;
 }
 }
}




int DayMax(int yr,int mth)
{
 if(mth==1||mth==3||mth==5||mth==7||
 mth==8||mth==10||mth==12)
 return 31;
 if(mth==4||mth==6||mth==9||mth==11)
 return 30;
 if(mth==2&&((yr%4==0&&yr%100!=0)||yr%400==0))
 return 29;
 else return 28;
}

void Timming(void)
{
 second=second+1;
 if(second==60)
 {
 second=0;
 minute=minute+1;
 if(minute==60)
 {
 minute=0;
 hour=hour+1;
 if(hour==24)
 {
 hour=0;
 day=day+1;
 if(day==(DayMax(year,month)+1))
 {
 day=1;
 month=month+1;
 if(month==13)
 {
 month=1;
 year=year+1;
 }
 }
 }
 }
 }
}

void TimeTracking(void)
{
 if(cTime<=0)
 {
 cTime= 200 ;
 Timming();
 }
 if(setmode== 0 )
 {
 if(mode== 0 ) DisplayClock(hour,minute,second);
 else DisplayCalendar(year,month,day);
 }
}

void BlinkCreate(void)
{
 if(mode== 0 )
 {
 if(cBlink<= 100 )
 {
 switch(pos)
 {
 case 0:{ DisplayClock(-1,temm,tems); break; }
 case 1:{ DisplayClock(temh,-1,tems); break; }
 case 2:{ DisplayClock(temh,temm,-1); break; }
 default: break;
 }
 if(cBlink<=0)
 cBlink= 200 ;
 }
 else DisplayClock(temh,temm,tems);
 }
 else
 {
 if(cBlink<= 100 )
 {
 switch(pos)
 {
 case 0:{ DisplayCalendar(temyear,temmonth,-1); break; }
 case 1:{ DisplayCalendar(temyear,-1,temday); break; }
 case 2:{ DisplayCalendar(-1,temmonth,temday); break; }
 default: break;
 }
 if(cBlink<=0)
 cBlink= 200 ;
 }
 else DisplayCalendar(temyear,temmonth,temday);
 }
}

int power(int a, int n)
{
 if(n==0) return 1;
 else if(n==1) return a;
 else if(n==2) return a*a;
 else if(n==3) return a*a*a;
 else return 0;
}




int PortValue;
void CheckKey(void)
{
 PortValue=PORTB;
 if(PortValue!=0xef&&PortValue!=0xfb&&PortValue!=0xbf&&PortValue!=0x7f&&PortValue!=0xff)
 {
 cMode= 100 ;cSet= 400 ;cUp= 100 ;cDown= 100 ;
 fMode=fSet=fUp=fDown= 0 ;
 return;
 }
 if(PortValue==0xef) cMode--;
 if(PortValue==0xfb) cSet--;
 if(PortValue==0xbf&&setmode== -1 )
 {
 if(--cUp<=0) fUp= 2 ;
 }
 if(PortValue==0x7f&&setmode== -1 )
 {
 if(--cDown<=0) fDown= 2 ;
 }
 if((cMode!= 100 ||cSet!= 400 ||cUp!= 100 ||cDown!= 100 )&&PortValue==0xff)
 {
 if(cMode>0&&cMode<= 100  -  20 ) fMode= 1 ;
 if(cSet>0&&cSet<= 400  -  20 ) fSet= 1 ;
 if(cUp>0&&cUp<= 100  -  20 ) fUp= 1 ;
 else fUp= 0 ;
 if(cDown>0&&cDown<= 100  -  20 ) fDown= 1 ;
 else fDown= 0 ;
 cMode= 100 ;cSet= 400 ;cUp= 100 ;cDown= 100 ;
 }
}

void KeyMode(void)
{
 fMode= 0 ;
 if(setmode== 0 ) mode=~mode;
 else
 {
 pos=0;
 cBlink= 200 ;
 setmode= 0 ;
 }
}

void KeySet(void)
{
 fSet= 0 ;
 if(setmode== 0 )
 {
 cBlink= 100 ;
 setmode= -1 ;
 if(mode== 0 ) {tems=second;temm=minute;temh=hour;}
 else {temday=day;temmonth=month;temyear=year;}

 }
 else
 {
 cBlink= 100 ;
 pos++;
 if(pos>=3)
 {
 pos=0;
 cBlink= 200 ;
 if(mode ==  0 )
 {
 second=tems;minute=temm;hour=temh;
 }
 else
 {
 day=temday;month=temmonth;year=temyear;
 }
 setmode= 0 ;
 }
 }
}

void KeyUp(void)
{
 if(fUp== 2 )
 {
 if(cUp<=(0- 20 )) cUp=0;
 else return;
 }
 switch(pos)
 {
 case 0:
 {
 if(mode== 0 )
 {
 if(++(temh)==24) temh=0;
 }
 else
 if(++(temday)==DayMax(temyear,temmonth)+1) temday=1;
 break;
 }
 case 1:
 {
 if(mode== 0 )
 {
 if(++(temm)==60) temm=0;
 }
 else
 if(++(temmonth)==13) temmonth=1;
 break;
 }
 case 2:
 {
 if(mode== 0 )
 {
 if(++(tems)==60) tems=0;
 }
 else temyear++;

 break;
 }
 default:break;
 }
 cBlink= 200 ;
 fUp= 0 ;
}

void KeyDown(void)
{
 if(fDown== 2 )
 {
 if(cDown==-20) cDown=0;
 else return;
 }
 switch(pos)
 {
 case 0:
 {
 if(mode== 0 )
 {
 if(--(temh)==-1) temh=23;
 }
 else
 if(--(temday)==0) temday=DayMax(temyear,temmonth);
 break;
 }
 case 1:
 {
 if(mode== 0 )
 {
 if(--(temm)==-1) temm=59;
 }
 else
 if(--(temmonth)==0) temmonth=12;
 break;
 }
 case 2:
 {
 if(mode== 0 )
 {
 if(--(tems)==-1) tems=59;
 }
 else temyear--;
 break;
 }
 default:break;
 }
 cBlink= 200 ;
 fDown= 0 ;
}




void timer0_init()
{
 INTCON.GIE=1;
 INTCON.TMR0IE=1;
 INTCON.TMR0IF=0;

 T0CON=0x02;
 TMR0L=0xca;
 TMR0H=0xf3;

 cTime= 200 ;
}

void interrupt()
{
 if(INTCON.TMR0IF)
 {
 INTCON.TMR0IF=0;
 TMR0L=0xca;
 TMR0H=0xf3;
 cTime--;
 CheckKey();
 if(setmode== -1 ) cBlink--;

 }
}




void main (void)
{
 INTCON2.RBPU=0;
 TRISB=0xff;
 TRISA=0x00;
 PORTA=0;
 ADCON1=0x0F;

 cMode= 100 ;cSet= 400 ;cUp= 100 ;cDown= 100 ;
 hour=0;minute=0;second=0;
 year=2000;month=1;day=1;
 pos=0;
 mode= 0 ;
 setmode= 0 ;
 fMode= 0 ; fSet= 0 ; fUp= 0 ; fDown= 0 ;
 fsync= 0 ;
 i=0;j=0;

 UART1_Init(9600);
 Delay_ms( 100 );

 DisplayClock(hour,minute,second);
 timer0_init();
 T0CON.TMR0ON=1;
 while(1)
 {
 if(fsync== 0 )
 {
 TimeTracking();
 if(fMode== 1 ) KeyMode();
 if(fSet== 1 ) KeySet();
 if(setmode== -1 )
 {
 if(fUp!= 0 ) KeyUp();
 if(fDown!= 0 ) KeyDown();
 BlinkCreate();
 }
 }
 if (UART1_Data_Ready()) {
 uart_rd = UART1_Read();
 if(i<6)
 {
 if(uart_rd!='-' && uart_rd!=':' && uart_rd!=' ')
 sync_time[i]+=(uart_rd-'0')*power(10,j++);
 else
 {
 if((++i)==6)
 {
 second=sync_time[0];
 minute=sync_time[1];
 hour=sync_time[2];
 day=sync_time[3];
 month=sync_time[4];
 year=sync_time[5];
 for(i=0;i<6;i++)
 sync_time[i]=0;
 i=0;

 }
 j=0;
 }
 }
 }





 }
}
