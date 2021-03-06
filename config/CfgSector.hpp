class CfgSector {

  sectors[] = {"pta_sector_1", "pta_sector_2", "pta_sector_3"};

  class pta_sector_1 {
    name="sector_kindfu";
    marker="pta_sector_kindfu";
    resource[] = {"Fuel"};
    tasks[] = {"pta_task_sector3"};
    province[] = {"pta_province_1"};
  };

  class pta_sector_2 {
    name="sector_zregurat";
    marker="pta_sector_zregurat";
    resource[] = {"Fuel"};
    tasks[] = {"pta_task_sector2"};
    province[] = {"pta_province_1"};
  };

  class pta_sector_3 {
    name="sector_mozart";
    marker="pta_sector_mozart";
    attackTargets[] = {"pta_sector_mozart_attack"};
    resource[] = {"Diesel"};
    tasks[] = {"pta_task_sector1"};
    province[] = {"pta_province_1"};
  };

};
