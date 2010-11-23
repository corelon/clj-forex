#include <windows.h>
#include <zmq.h>
#include <errno.h>

void my_free(void*data,void*hint) {
  free(data);
}

//messages: underscore before name denotes that it does something more than the actual original dll function, or that it is a function not in dll
//todo: handle error if malloc dont work?
zmq_msg_t* WINAPI _zmsg_new ()
{
  void* ret =  malloc(sizeof(zmq_msg_t));  return ret;
}  

int WINAPI _zmq_msg_init_data (zmq_msg_t* msg,char *data, int size) {
  char* new_data = strdup(data);
  int ret =  zmq_msg_init_data(msg,new_data,size,my_free,NULL);  
  return ret; 
}
char* WINAPI _zmq_msg_data (zmq_msg_t *msg) {
  char* data = zmq_msg_data(msg);
  return strdup(data);
}


int WINAPI zmq_msg_size (zmq_msg_t *msg) {
  int ret = zmq_msg_size(msg);  return ret;
}
int WINAPI zmq_msg_close (zmq_msg_t *msg) {
  int ret = zmq_msg_close(msg); return ret;
}

//context
void* WINAPI zmq_init (int io_threads) {
  void* ret = zmq_init(io_threads);  return ret;
}
int WINAPI zmq_term (void* context) {
  int ret = zmq_term(context);  return ret;
}
//sockets
void* WINAPI zmq_socket (void* context, int type) {
  void* ret= zmq_socket(context,type);  return ret;
}
int WINAPI zmq_close(void* socket) {
 int ret = zmq_close(socket); return ret;
}
int WINAPI zmq_bind(void*socket,const char* endpoint) {
  int ret = zmq_bind(socket,endpoint);   return ret;
}
int WINAPI zmq_connect(void*socket,const char*endpoint) {
  int ret = zmq_connect(socket,endpoint);  return ret;
}
int WINAPI zmq_send(void*socket,zmq_msg_t*msg,int flags) {
  int ret = zmq_send(socket,msg,flags); return ret;
}
int WINAPI zmq_recv(void*socket,zmq_msg_t* msg,int flags) {
 int ret = zmq_recv(socket,msg,flags);  return ret;
}
//error handling
const char* WINAPI zmq_strerror(int errnum) {
  return zmq_strerror(errnum);
}
int WINAPI zmq_errno() {
 return zmq_errno();
}

//misc
void WINAPI zmq_version(int *major,int*minor,int*patch) {  
  zmq_version(major,minor,patch);  
} 



