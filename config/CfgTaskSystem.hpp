class CfgTaskSystem {

    class pta_task_sector1 {
      name = "Destroy the radio tower"; //Name of the task
      desc = "There is a radio tower kill it"; // Description of the task
      markerName = "pta_task_sector3"; // The name of the empty marker that you have given in the mission
      taskType = "kill"; //https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Default_Task_Types:_Actions
      winCond = "(!alive (radiotower))";
      unit[] = {"pta_inf_squad", "pta_inf_ft", "pta_inf_ft"};
    };

    class pta_task_sector2 {
      name = "Kill Officer"; //Name of the task
      desc = "Kill Raschisch, Kill him!"; // Description of the task
      markerName = "pta_task_sector1"; // The name of the empty marker that you have given in the mission
      taskType = "kill"; //https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Default_Task_Types:_Actions
      winCond = "(!alive (officer_1))";
      unit[] = {"pta_inf_ft", "pta_inf_ft", "pta_inf_ft"};
    };

    class pta_task_sector3 {
      name = "Destroy AA"; //Name of the task
      desc = "There are 2 AA's in the AO, destroy them!"; // Description of the task
      markerName = "pta_task_sector2"; // The name of the empty marker that you have given in the mission
      taskType = "kill"; //https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Default_Task_Types:_Actions
      winCond = "(!alive (aa1)) && (!alive(aa2))";
      unit[] = {"pta_inf_ft", "pta_inf_squad", "pta_inf_squad"};
    };

};
