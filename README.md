
# dio_log_fork
## Added curl
#### HTTP Inspector tool for Dart which can debugging http requests，Currently, DIO based HTTP capture is implemented
#### Of course, you can implement an Interceptor instead of a DiologInterceptor to adapt to other HTTP clients
#### Thank to (https://github.com/flutterplugin/dio_log)

### Add dependency
```
dependencies: 
  dio_log_fork : ^5.0.0
```
### [github](https://github.com/hvlocgh/dio_log_fork)
```
  dio_log_fork:
    git:
      url: https://github.com/hvlocgh/dio_log_fork
      ref: master
```
### set interceptor of dio
```
dio.interceptors.add(DioLogForkInterceptor());
```
### Add a global hover button on your home page to jump through the log list
```
///display overlay button
showDebugBtn(context,btnColor: Colors.blue);
///cancel overlay button
dismissDebugBtn();
///overlay button state of display
debugBtnIsShow()
```
### Or open a log list where you want it to be
``` 
Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => HttpLogListWidget(),
    ),
  );  
```
### Other configurable parameters
```
/// Sets the maximum number of entries for logging
LogPoolManager.getInstance().maxCount = 100;
```

### Screenshot 
<img src="https://raw.githubusercontent.com/flutterplugin/dio_log/develop/images/log_list.jpg" width="200">      
<img src="https://raw.githubusercontent.com/flutterplugin/dio_log/develop/images/log_request.jpg" width="200">
<img src="https://raw.githubusercontent.com/flutterplugin/dio_log/develop/images/log_response.jpg" width="200">

### gif demo 
![gif](https://raw.githubusercontent.com/flutterplugin/dio_log/develop/images/dio_log_example.gif)