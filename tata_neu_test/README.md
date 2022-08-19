# Tata Neu coding test

![alt text](https://github.com/DineshKMasthaiah/TataNeuTestRepo/blob/main/tata_neu_test/device_screen.png)


## A. Descriptive Questions:

1. Can we nest the Scaffold widget? Why or Why not?
    As Scaffold is also a widget, we can use nested Scaffolds.
    But it not advisable to use nested Scaffolds as Scaffold is a top level, structured Widget (mostly meant to use per app or screen basis, so nesting doesn't make sense).
    One most common use case where we try to nest Scaffolds is in TabBar/TabBarView requirement
    which requires updating the AppBar when user swipes through pages. This can be solved by setting a listener to TabController
    & rebuilding the AppBar

2. What are the different ways we can create a custom widget ?
 1.By Composition: Creating complex widget by combining multiple widgets. this way we can reuse the custom widget across our application
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


b) Widget by CustomPainter: If we don't get the widget we want by combining multiple widgets, we can use CustomPainter & draw on Canvas.

c) RenderObjects: It's a low level flutter API that helps us to draw the Widgets on Canvas in the same way how flutter framework created its standard Widgets

3. How can I access platform(iOS or Android) specific code from Flutter?
  Using Method Channel:  Builtin platform-specific API support doesn’t rely on code generation(unlike ReactNative), but rather on a flexible message passing style.

  The Flutter portion of the app sends messages to the respective platform (host), over a platform channel.

  The host listens on the platform channel, and receives the message. It then calls into any number of platform-specific APIs—using the native programming language—and sends a response back to the client, the Flutter portion of the app.

4. What is BuildContext? What is its importance?
A handle to the physical location of a widget on the widget tree.Every widget has its own BuildContext that contains useful information about the current Widget.
The BuildContext of any widget becomes the parent of the BuildContext of the Widget tree returned by It's build method
