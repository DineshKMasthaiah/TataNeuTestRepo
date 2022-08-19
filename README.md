# Tata Neu coding test

#### 1.Refactor the code below so that the children will wrap to the next line when the display width is small for them to fit.<br/>
<img src="https://github.com/DineshKMasthaiah/TataNeuTestRepo/blob/main/question1.png" width="20%" height="20%"/>

Wrap widget will move the children to next line if there is not enough space to render them all in single line.

<img src="https://github.com/DineshKMasthaiah/TataNeuTestRepo/blob/main/tata_neu_test/device_screen.png" width="20%" height="20%"/>
 The screenshot above shows the out after making changes to the code to use "Wrap" wiget.
 
#### 2.Identify the problem in the following code block and correct it.<br/>
<img src="https://github.com/DineshKMasthaiah/TataNeuTestRepo/blob/main/question2.png" width="20%" height="20%"/>

As per the Dart coding guideline, Method name should starte with lower case. So,it has been corrected.
As shown in the screenshot above, If the method is not accessed outside of the class, then it should be made private by prefixing "_" underscore to the method name.
It was also noticed in the code that this method is returning a string with "how many times a counter has been printed". but in the given code,
there is no print statement.If this was the original requirement, then, we should add a print statement with in the for loop.
Apart from these changes, everything looks good.

#### 3.In the below code, list1 declared with var, list2 with final and list3 with const.What is the difference between these lists? Will the last two lines compile?<br/>
<img src="https://github.com/DineshKMasthaiah/TataNeuTestRepo/blob/main/question3.png" width="20%" height="20%"/>
As shown in the screenshot above, The line 58 doesn't compile.
The list1 is not a constant reference (but list3 is). so, list1 can be assigned with any of the new list types.
    So, variables declared with <b>const</b> should be assigned with a constant value (compile time binding)

## A. Descriptive Questions:

### 1. Can we nest the Scaffold widget? Why or Why not?
    As Scaffold is also a widget, we can use nested Scaffolds.
    But it not advisable to use nested Scaffolds as Scaffold is a top level, structured Widget (mostly meant to use per app or screen basis, so nesting doesn't make sense).
    One most common use case where we try to nest Scaffolds is in TabBar/TabBarView requirement
    which requires updating the AppBar when user swipes through pages. This can be solved by setting a listener to TabController
    & rebuilding the AppBar

### 2. What are the different ways we can create a custom widget ?
 <b>a).By Composition:</b> Creating complex widget by combining multiple widgets. this way we can reuse the custom widget across our application
 ex:
class WeatherWidget extends StatefulWidget{
   final int temperature;
   final int humidity;
     const WeatherWidget({Key? key, required this.temperature, this.humidity}) : super(key: key);

@override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}
class _WeatherWidgetState extends State<WeatherWidget> {

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(bottom: KMPadding.cardBottomPadding),
        child: Column(
          children:<Widget>[
          Text(widget.temperature),
          Text(widget.humidity)
          ]
        ));
  }
 }


<b>b) Widget by CustomPainter:</b> If we don't get the widget we want by combining multiple widgets, we can use CustomPainter & draw on Canvas.

<b>c) RenderObjects:</b> It's a low level flutter API that helps us to draw the Widgets on Canvas in the same way how flutter framework created its standard Widgets

### 3. How can I access platform(iOS or Android) specific code from Flutter?
  <b>Using Method Channel:</b>  Builtin platform-specific API support doesn’t rely on code generation in flutter(unlike ReactNative).So, it uses a flexible message passing style.

  The Flutter code sends messages to the respective platform (host), over a platform channel.

  The host listens on the platform channel, and receives the message. It then calls into any number of platform-specific APIs—using the native programming language—and sends a response back to the client.

### 4. What is BuildContext? What is its importance?
A handle to the physical location of a widget on the widget tree.Every widget has its own BuildContext that contains useful information about the current Widget.
The BuildContext of any widget becomes the parent of the BuildContext of the Widget tree returned by It's build method.
