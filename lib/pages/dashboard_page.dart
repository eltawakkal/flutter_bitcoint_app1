import 'package:dashboard/widgets/dashboard_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardPageSate();
  }

}

class DashboardPageSate extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet_rounded)),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/user.png")
              )
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          ListTile(
            title: Text(
              "Hellow David",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Welcome Back !",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardContainer(
                    background: Colors.green,
                    icon: Icon(Icons.eleven_mp_outlined),
                    title: "230K",
                    subTitle: "sales"
                ),
                DashboardContainer(
                    background: Colors.purple,
                    icon: Icon(Icons.eighteen_mp),
                    title: "8.549K",
                    subTitle: "sales"
                )
              ]
          ),
          SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardContainer(
                    background: Colors.yellow,
                    icon: Icon(Icons.eleven_mp_outlined),
                    title: "230K",
                    subTitle: "sales"
                ),
                DashboardContainer(
                    background: Colors.red,
                    icon: Icon(Icons.eighteen_mp),
                    title: "8.549K",
                    subTitle: "sales"
                )
              ]
          ),
        ],
      ),
    );
  }
}