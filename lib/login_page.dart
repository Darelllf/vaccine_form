import 'package:flutter/material.dart';
import 'package:project2/params_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController notelpController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController umurController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Shibly Vaksin'),
        elevation: 2.0,
      ),
      body: Container(
        
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              
        
              const Text('Vaccine Register',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(
              height: 50,
            ),
             
            TextFormField(
          
              controller: nameController,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              
              labelText: 'Nama kamu',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
        
            TextFormField(
              controller: nikController,
              keyboardType: TextInputType.number, 
            
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'No. NIK',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: notelpController,
              keyboardType: TextInputType.number, 
              
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'No. Telp',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: adressController,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Alamat',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: umurController,
              keyboardType: TextInputType.number, 
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Umur',
              ),
            ),
        
            const SizedBox(
          
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) =>ParamsPage(text_value: nameController.text,
                text_nonik: nikController.text,
                text_notelp: notelpController.text,
                text_alamat: adressController.text, 
                text_umur: umurController.text,
                ),
                 
                ),
              );
              
              
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width -32, 50),
            
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "Ayo Vaksin", style: TextStyle(fontWeight: FontWeight.bold ),
                ),
            )
          ],
          ),
        ),
      ),
    );
  }
}