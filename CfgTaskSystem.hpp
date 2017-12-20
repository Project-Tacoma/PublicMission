class CfgTaskSystem {

  //Just add here the main task
  //The tasks will be activated in order of this array!
  tasks[] = {"pms_exmapleTask1"};

  class pms_exmapleTask1 {

    name = "Example"; //Name of the task
    desc = "Example desc"; // Description of the task
    markerName = "pms_exampleTask1"; // The name of the empty marker that you have given in the mission
    taskType = "kill"; //https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Default_Task_Types:_Actions
    reward = 20 //How many tickets they get for this

    //lists here all side tasks
    sideMissions[] = {"pms_exampleSideTask"};

    class sideTasks {

      class pms_exampleSideTask {

        name = "Example Side"
        desc = "Example Side desc!";
        markerName = "pms_exampleSideTask1"
        taskType = "scout";
        reward = 10;

      };

    };

  };

};
