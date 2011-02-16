void Default_MACD (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_FastEMA = StrToInteger(command[7]);
int i_SlowEMA = StrToInteger(command[8]);
int i_SignalSMA = StrToInteger(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"MACD",i_FastEMA,i_SlowEMA,i_SignalSMA,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_RSI (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_RSIPeriod = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"RSI",i_RSIPeriod,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Bands (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_BandsPeriod = StrToInteger(command[7]);
int i_BandsShift = StrToInteger(command[8]);
double i_BandsDeviations = StrToDouble(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Bands",i_BandsPeriod,i_BandsShift,i_BandsDeviations,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Moving_Averages (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_MA_Period = StrToInteger(command[7]);
int i_MA_Shift = StrToInteger(command[8]);
int i_MA_Method = StrToInteger(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Moving Averages",i_MA_Period,i_MA_Shift,i_MA_Method,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Bulls (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_BullsPeriod = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Bulls",i_BullsPeriod,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Momentum (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_MomPeriod = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Momentum",i_MomPeriod,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Alligator (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_JawsPeriod = StrToInteger(command[7]);
int i_JawsShift = StrToInteger(command[8]);
int i_TeethPeriod = StrToInteger(command[9]);
int i_TeethShift = StrToInteger(command[10]);
int i_LipsPeriod = StrToInteger(command[11]);
int i_LipsShift = StrToInteger(command[12]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Alligator",i_JawsPeriod,i_JawsShift,i_TeethPeriod,i_TeethShift,i_LipsPeriod,i_LipsShift,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_ATR (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_AtrPeriod = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"ATR",i_AtrPeriod,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_iExposure (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
color i_ExtColor = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"iExposure",i_ExtColor,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Stochastic (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_KPeriod = StrToInteger(command[7]);
int i_DPeriod = StrToInteger(command[8]);
int i_Slowing = StrToInteger(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Stochastic",i_KPeriod,i_DPeriod,i_Slowing,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Bears (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_BearsPeriod = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Bears",i_BearsPeriod,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_CCI (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_CCIPeriod = StrToInteger(command[7]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"CCI",i_CCIPeriod,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Heiken_Ashi (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
color i_color1 = StrToInteger(command[7]);
color i_color2 = StrToInteger(command[8]);
color i_color3 = StrToInteger(command[9]);
color i_color4 = StrToInteger(command[10]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Heiken Ashi",i_color1,i_color2,i_color3,i_color4,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Ichimoku (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_Tenkan = StrToInteger(command[7]);
int i_Kijun = StrToInteger(command[8]);
int i_Senkou = StrToInteger(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Ichimoku",i_Tenkan,i_Kijun,i_Senkou,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_ZigZag (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_ExtDepth = StrToInteger(command[7]);
int i_ExtDeviation = StrToInteger(command[8]);
int i_ExtBackstep = StrToInteger(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"ZigZag",i_ExtDepth,i_ExtDeviation,i_ExtBackstep,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Accelerator (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
 double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Accelerator",mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Parabolic (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
double i_Step = StrToDouble(command[7]);
double i_Maximum = StrToDouble(command[8]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Parabolic",i_Step,i_Maximum,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Awesome (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
 double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Awesome",mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_Accumulation (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
 double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"Accumulation",mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

void Default_OsMA (string command[]) { 
string symbol = command[2];
int timeframe = StrToInteger(command[3]);
int mode = StrToInteger(command[4]);
int shift = StrToInteger(command[5]);
int amount = StrToInteger(command[6]);
int i_FastEMA = StrToInteger(command[7]);
int i_SlowEMA = StrToInteger(command[8]);
int i_SignalSMA = StrToInteger(command[9]); double array[];
ArrayResize(array,amount);int j=0;

for (int i=shift+amount-1;i>=shift;i--) {
array[j] = iCustom(symbol,timeframe,"OsMA",i_FastEMA,i_SlowEMA,i_SignalSMA,mode,shift);
j+=1;
} 
int err = GetLastError();
if(err!=0) {
  send_error(err);
  return;
}
send_array(array); 
}

int process_INDICATORS_DEFAULT(string c,string command[]) {
if (c=="0") {
}
else if (c=="Default_MACD") {
Default_MACD(command);
}
else if (c=="Default_RSI") {
Default_RSI(command);
}
else if (c=="Default_Bands") {
Default_Bands(command);
}
else if (c=="Default_Moving_Averages") {
Default_Moving_Averages(command);
}
else if (c=="Default_Bulls") {
Default_Bulls(command);
}
else if (c=="Default_Momentum") {
Default_Momentum(command);
}
else if (c=="Default_Alligator") {
Default_Alligator(command);
}
else if (c=="Default_ATR") {
Default_ATR(command);
}
else if (c=="Default_iExposure") {
Default_iExposure(command);
}
else if (c=="Default_Stochastic") {
Default_Stochastic(command);
}
else if (c=="Default_Bears") {
Default_Bears(command);
}
else if (c=="Default_CCI") {
Default_CCI(command);
}
else if (c=="Default_Heiken_Ashi") {
Default_Heiken_Ashi(command);
}
else if (c=="Default_Ichimoku") {
Default_Ichimoku(command);
}
else if (c=="Default_ZigZag") {
Default_ZigZag(command);
}
else if (c=="Default_Accelerator") {
Default_Accelerator(command);
}
else if (c=="Default_Parabolic") {
Default_Parabolic(command);
}
else if (c=="Default_Awesome") {
Default_Awesome(command);
}
else if (c=="Default_Accumulation") {
Default_Accumulation(command);
}
else if (c=="Default_OsMA") {
Default_OsMA(command);
}

else {
return(-1);
}
return(0);
}