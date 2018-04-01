class CfgTaskSystem {

  //Just add here the main task
  //The tasks will be activated in order of this array!
    tasks[] = {"pta_task_sector1"};
    class pta_task_sector1 {
      name = "Kill Officer"; //Name of the task
      desc = "Kill him!"; // Description of the task
      markerName = "pta_task_sector1"; // The name of the empty marker that you have given in the mission
      taskType = "kill"; //https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Default_Task_Types:_Actions
      winCond = "(!alive (officer))";
    };
};
