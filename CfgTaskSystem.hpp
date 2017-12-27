class CfgTaskSystem {

  //Just add here the main task
  //The tasks will be activated in order of this array!
  class PT_Operations {
    operations[] = {"op_example"};

    class op_example {
      name = "Example";
      desc = "Example des";
      reward = 100;
      tasks[] = {"pt_exmapleTask1"};

      class pt_exmapleTask1 {

        name = "Example"; //Name of the task
        desc = "Example desc"; // Description of the task
        markerName = "pms_exampleTask1"; // The name of the empty marker that you have given in the mission
        taskType = "kill"; //https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Default_Task_Types:_Actions
        reward = 20 //How many tickets they get for this
        minPlayer = 5; //Min player who you need for this mission
        maxPlayer = 10; //Max player who you need for this mission

        //lists here all side tasks
        sideMissions[] = {"pms_exampleSideTask"};

        class sideTasks {

          class pt_exampleSideTask {

            name = "Example Side"
            desc = "Example Side desc!";
            markerName = "pms_exampleSideTask1"
            taskType = "scout";
            reward = 10;
            minPlayer = 2;
            maxPlayer = 4;

          };

        };

      };
    };
  };

};
