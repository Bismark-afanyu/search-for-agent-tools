import 'dart:io';

List categories = ["A1", "A2", "A3", "A4", "A5"];
List activeAgent = [];
List toolsFitsAgents = [];

class Owner {
  int? ownerVolume = 0;
  double? ownerCoordinate = 0.0;

  // constructors with intial values

  Owner({this.ownerVolume, this.ownerCoordinate});

  //set owner's volume
  void setVolume() {
    String bestFits = '';
    print("owner's volume");
    dynamic volume = stdin.readLineSync();
    int ownerVolume = int.parse(volume);
    for (int i = 0; i <= 600; i++) {
      if (i > 0 && i <= 50 && ownerVolume == i) {
        bestFits = categories[4];
        print(bestFits);
        break;
      } else if (i > 50 && i <= 80 && ownerVolume == i) {
        bestFits = categories[3];
        print(bestFits);
        break;
      } else if (i > 80 && i <= 200 && ownerVolume == i) {
        bestFits = categories[2];
        print(bestFits);
        break;
      } else if (i > 200 && i <= 300 && ownerVolume == i) {
        bestFits = categories[1];
        print(bestFits);
        break;
      } else if (i > 300 && i <= 600 && ownerVolume == i) {
        bestFits = categories[0];
        print(bestFits);
        break;
      }
    }

    for (int i in activeAgent) {
      if (i == bestFits) {
        toolsFitsAgents.add(i);
      }
    }
    print(toolsFitsAgents);
  }
  void getOwnerCoordinate() {
      ownerCoordinate = 0.0;
    }
  void distance(){
    
  }

}



 // for (int i = 51; i <= 80; i++) {
    //   if (ownerVolume == i) {
    //     bestFits = categories[3];
    //     print(bestFits);
    //     break;
    //   }
    // }
    // for (int i = 81; i <= 200; i++) {
    //   if (ownerVolume == i) {
    //     bestFits = categories[2];
    //     print(bestFits);
    //     break;
    //   }
    // }
    // for (int i = 201; i <= 300; i++) {
    //   if (ownerVolume == i) {
    //     bestFits = categories[1];
    //     print(bestFits);
    //     break;
    //   }
    // }
    // for (int i = 301; i <= 600; i++) {
    //   if (ownerVolume == i) {
    //     bestFits = categories[0];
    //     print(bestFits);
    //     break;
    //   }
    // }
    // for (int j = 0; j <= activeAgent.length; j++) {
    //   if (activeAgent[j]['agent name'] == bestFits) {
    //     toolsFitsAgents.add(j);
    //   } else {
    //     print('no agent');
    //   }
    // }