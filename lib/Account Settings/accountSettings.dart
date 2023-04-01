import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});
  @override
  Widget build(BuildContext context) {
    var card1 = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text(
              "修改密码",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.navigate_next, size: 27.0),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
    var card2 = Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: const Text(
                "手机号",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              title: const Text(
                "123456",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.navigate_next),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => Container(
                              child: Dialog(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: SizedBox(
                                  width: 289,
                                  height: 135,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Stack(children: [
                                        const SizedBox(
                                          width: 289,
                                          height: 135,
                                        ),
                                        const Positioned(
                                          top: 11,
                                          left: 60,
                                          child: SizedBox(
                                            width: 162,
                                            height: 34,
                                            child: Center(
                                              child: Text(
                                                '修改绑定的手机号',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          bottom: 50,
                                          left: 84,
                                          child: Text(
                                            '当前绑定手机号为 \n 1888888888',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 0,
                                            left: 15,
                                            child: ButtonBar(
                                              buttonPadding:
                                                  const EdgeInsets.all(20),
                                              alignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 75,
                                                  height: 22,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0))),
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(const Color
                                                                        .fromARGB(
                                                                    1,
                                                                    217,
                                                                    217,
                                                                    217))),
                                                    child: const Text(
                                                      '取消',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12),
                                                    ),
                                                    onPressed: () {
                                                      print('取消');
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Positioned(
                                            bottom: 0,
                                            right: 15,
                                            child: ButtonBar(
                                              buttonPadding:
                                                  const EdgeInsets.all(20),
                                              alignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 75,
                                                  height: 22,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0))),
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(Colors
                                                                    .green)),
                                                    child: const Text(
                                                      '修改',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12),
                                                    ),
                                                    onPressed: () {
                                                      print('修改');
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                )
                                              ],
                                            ))
                                      ])
                                    ],
                                  ),
                                ),
                              ),
                            ));
                  })),
          Divider(
            color: Colors.grey.shade100,
            height: 10.0,
            thickness: 10.0,
          ),
          ListTile(
              title: const Text(
                "注销账号",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.navigate_next, size: 27.0),
                  onPressed: () {}))
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "lulab",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "账号设置",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              icon: const Icon(
                Icons.navigate_before_sharp,
                color: Colors.black,
              ),
              onPressed: () {}),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "\n  密码设置\n",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.5,
              ),
            ),
            card1,
            const Text(
              "\n  账户绑定\n",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.5,
              ),
            ),
            card2,
          ],
        ),
      ),
    );
  }
}
