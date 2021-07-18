import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Home()));
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
        Center( child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Image.asset('assets/instagram-removebg-preview.jpg',
              width:350.0,
              height:150.0,

            ),
            SizedBox(height:150.0),
            new SizedBox(
              width: 350.0,
              height: 50.0,

              child: FlatButton(
                child: Text('Login', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),

            ),
            SizedBox(height:40.0),
            new SizedBox(
              width: 350.0,
              height: 50.0,
              child: OutlineButton(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.blue,
                  style: BorderStyle.solid,
                ),
                child: Text('SignUp', style: TextStyle(fontSize: 20.0),),
                color: Colors.white,
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
              ),
            ),

          ],
        )

        )
    );
  }
}
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

          backgroundColor:Colors.grey[100],

        ),
        body:Container(
            child:
            Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      child:Center(
                          child:Container(
                              margin: EdgeInsets.fromLTRB(0.0, 100.0,0.0, 0.0),
                              height: 80.0,
                              child:Image(
                                  image: AssetImage('assets/instagram-removebg-preview.jpg')
                              )
                          )
                      )
                  ),
                  Container(
                      child:Container(
                          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 15.0),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                          child:TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your instagram username',
                              labelText: 'Username',
                            ),
                          )
                      )

                  ),
                  Container(
                      child:Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                          child:TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your instagram Password',
                              labelText: 'Password',
                            ),
                          )
                      )
                  ),
                  Container(
                      margin:EdgeInsets.symmetric(horizontal: 0.0,vertical: 30.0) ,
                      child:ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child:Container(
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 150.0,vertical: 10.0),
                          child: Text('Login'),

                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0.0,vertical:30.0),
                    child: Text('OR'),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 90.0,vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text("Don't have an account ?"),
                          ),
                          Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUp()),
                                  );
                                },
                                child: Text('Sign-Up'),
                              )
                          )
                        ],

                      )

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 10.0),
                    child: Text("Instagram OT Facebook"),
                  ),
                ]
            )
        )
    );
  }
}
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

          backgroundColor: Colors.grey[100],

        ),
        body: Container(
            child:
            Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      child: Center(
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                              height: 80.0,
                              child: Image(
                                  image: AssetImage(
                                      'assets/instagram-removebg-preview.jpg')
                              )
                          )
                      )
                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your instagram username',
                              labelText: 'Username',
                            ),
                          )
                      )

                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your instagram Password',
                              labelText: 'Password',
                            ),
                          )
                      )
                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Confirm your password',
                              labelText: 'Confirm Password',
                            ),
                          )
                      )
                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your email id',
                              labelText: 'Email ID',
                            ),
                          )
                      )
                  ),

                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 150.0, vertical: 10.0),
                          child: Text('SignUp'),

                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 30.0),
                    child: Text('OR'),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 90.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text("Have an account ?"),
                          ),
                          Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()),
                                  );
                                },
                                child: Text('Login'),
                              )
                          )
                        ],

                      )

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text("Instagram OT Facebook"),
                  ),
                ]
            )
        )
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool liked = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          color: Colors.white,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              SizedBox(width:10.0),
              IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined,color:Colors.black )),
              SizedBox(width:100.0),
              Image.asset('instagram-removebg-preview-compressed.jpg', height:140,width:90),
              SizedBox(width:60.0),
              IconButton(onPressed: (){}, icon:Icon(Icons.message_rounded,color:Colors.black )),
              SizedBox(width:10.0),
              IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstaDM()),
                );
              }, icon:Icon(Icons.send_sharp,color:Colors.black )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Optional()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
      body:ListView(
        scrollDirection: Axis.vertical,
        children:<Widget>[
          Container(
              height: 85.0,
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(width: 0.1,color: Colors.black12))
              ),
              child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('mystory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('otherstory.jpg')
                        )
                    ),
                  ]
              )
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:45,width:45),
                SizedBox(width:15),
                Text('joshuaI\n'
                    'Tokyo,Japan', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'postinsta.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                IconButton(onPressed: (){}, icon:Icon(Icons.comment_bank_rounded,color:Colors.black )),
                IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp,color:Colors.black )),
              ],
            ),
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('otherstorycropped.jpg', height:40,width:40),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others\njoshuI The game was amazing and I want to share\n some photos.'
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}

class SearchPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 50,
          width: 411,
          padding: EdgeInsets.fromLTRB(0,5,40,5),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Search',
              labelText: 'Search',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/live.jpg',
                  width: 20,
                  height: 20,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Optional()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
      body:GridView.count(crossAxisCount: 3,crossAxisSpacing: 5.0,mainAxisSpacing: 0.0,
          children:[
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
          ]
      ),

    );

  }
}
class InstaDM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('jacob_w', style: TextStyle(
                color: Colors.black
            ),
            ),
            IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: null,
            ),
          ],
        ),

        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios), color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add), color: Colors.black,
          ),
        ],

        iconTheme: IconThemeData(
          color: Colors.black,
        ),

        backgroundColor: Colors.grey[100],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200]
                ),
                height: 45,
                margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: TextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: ' ',
                      labelText: 'Search',

                    )
                )),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),


          ],


        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.camera_alt,
              size: 30,
              color: Colors.blue,
            ),
            Text(
              'Camera',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            )
          ],
        ),
      ),


    );
  }
}
class Optional extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(250, 250, 250, 1),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Image.asset('optional1.jpg'),
                  ),
                  Container(
                    child: Image.asset('optional2.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset('optional3.jpg'),
            ),
            Container(
              child: Image.asset('optional4.jpg'),
            ),
            Container(
              child: Image.asset('optional5.jpg'),
            ),
            Container(
              child: Image.asset('optional6.jpg'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 270, 5),
              child: Text(
                'This Month',
                style: TextStyle(
                  color: Color.fromRGBO(38, 38, 38, 1),
                ),
              ),
            ),
            Container(
              child: Image.asset('optional7.jpg'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Optional()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),

    );

  }
}
class Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Optional()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child:Column(
            children: <Widget>[
              Row(
                children:<Widget> [
                  SizedBox(width:140),
                  IconButton(onPressed: (){}, icon:Icon(Icons.lock_outline,color:Colors.black )),
                  Text('Jacob_w',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down,color:Colors.black )),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children:<Widget> [
                  SizedBox(width:10),
                  Image.asset('otherstorycropped.jpg',width: 60,height: 60,),
                  SizedBox(width:30),
                  Text('54             834             162\nPosts      Following      Followers',
                    style: TextStyle(
                        fontSize: 20.0
                    ),),
                ],
              ),
              SizedBox(height:20),
              Row(
                children:<Widget> [
                  SizedBox(width:10),
                  Text('Jacob West\nDigital Goodies Designer @pixellz\nEverything is designed.',
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
                ],
              ),
              SizedBox(height:20),
              Row(
                children:<Widget> [
                  SizedBox(width:10),
                  SizedBox(
                      width: 375,
                      height:40,
                      child:ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        ),
                        child: Text('Edit Profile', style: TextStyle(
                            color: Colors.black
                        ),),
                      )
                  ),
                ],
              ),
            ],
          )


      ),
      body:GridView.count(crossAxisCount: 3,crossAxisSpacing: 5.0,mainAxisSpacing: 0.0,
          children:[
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
            Image.asset('gridimage1.jpg'),
            Image.asset('gridimage2.jpg'),
          ]
      ),
    );

  }
}


