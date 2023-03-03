import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/bloc/Shipment/shipment_bloc.dart';
import 'package:testapp/model/LoginModel.dart';
import 'package:testapp/model/ShipmentModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.loginModel}) : super(key: key);
  final List<LoginModel> loginModel;
  @override
  State<Home> createState() => _HomeState();
}
late List<ShipmentModel> shipmentModel;

class _HomeState extends State<Home> {
  void initState() {
    // TODO: implement initState
    BlocProvider.of<ShipmentBloc>(context).add(FetchShipment(ShipperId: widget.loginModel.first.shipperId.toString(),
        BranchId: widget.loginModel.first.branchID.toString()));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final Mheight=MediaQuery.of(context).size.height;
    final Mwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Mheight*9,
        width: Mwidth*9,
        child: Column(
          children: [
            SizedBox(
              height: Mheight*0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 400),
              child: Container(
                  child: Icon(Icons.ac_unit,size: 50,)),
            ),
            // SizedBox(
            //   height: Mheight*0.02,
            //   width: Mwidth*0.15,
            // ),

            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",style: TextStyle(fontSize: 20),),
                    Row(
                      children: [
                        Text("name:"),
                        Text(widget.loginModel.first.name.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Shipper id:"),
                        Text(widget.loginModel.first.shipperId.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Branch Id:"),
                        Text(widget.loginModel.first.branchID.toString()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Mheight*0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text("List of Shipments",style: TextStyle(fontSize: 20),),
            ),
            BlocBuilder<ShipmentBloc, ShipmentState>(
  builder: (context, state) {
    if (state is ShipmentLoading) {
    return const Center(
    child: CircularProgressIndicator(),
    );
    }

    if (state is ShipmentError) {
    return RefreshIndicator(
    onRefresh: () async {
    return BlocProvider.of<ShipmentBloc>(context).add(FetchShipment(ShipperId: widget.loginModel.first.shipperId.toString(),
        BranchId: widget.loginModel.first.branchID.toString()));
    },
    child: SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: SizedBox(
    height: MediaQuery.of(context).size.height * .9,
    // color: Colors.red,
    child: const Center(
    child: Text("something went wrong"),
    ),
    ),
    ),
    );
    }
    if (state is ShipmentLoaded) {
    shipmentModel = BlocProvider.of<ShipmentBloc>(context).shipmentModel;
    return Expanded(
              child: ListView.builder(itemCount: shipmentModel.length,
                  itemBuilder: (ctc, index){
                return Card(
                  child: Container(
                    height: Mheight*0.1,
                    width: Mwidth*3,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(shipmentModel[index].shipmentId.toString()),
                            Text(shipmentModel[index].date.toString()),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(shipmentModel[index].recieverName.toString(),style: TextStyle(fontSize: 15),),
                            Text(shipmentModel[index].cODAmount.toString(),style: TextStyle(fontSize: 20),),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            );
    }
    return const Center(
      child: Text("no response"),
    );
  },
)


          ],
        ),
      ),
    );
  }
}
