class ADDON {

  tag = QUOTE(ADDON);

  class eventHandler {
    file="Framework\EventHandler";
    class onRespawn{};
    class onTicketLose{};
    class onTaskCompleted{};
    class onSectorConquered{};
    class onUnitInSector{};
  };

  class ticket {
    file="Framework\Ticket";
    class getTicket{};
    class setTicket{};
    class showTicket{};
  };

  class task {
    file="Framework\Task";
    class createTask{};
    class initTask{};
    class taskWatcher{};
  };

  class generator {
    file="Framework\Generator\Functions";
    class createLocation{};
    class createMission{};
    class taskPatrol {};
  	class taskPatrolFull {};
    class generateTask {};
  };

  class database {
    file="Framework\Database";
    class connector{};
    class getPlayer{};
    class savePlayer{};
    class getResult{};
    class displayPlayer{};
    class getWhitelist{};
  };

  class tfar {
    file="Framework\TFAR";
    class checkTFARConnection{};
  };

  class session {
    file="Framework\Session";
    class receiveData{};
  };

  class sector {
    file="Framework\Sector";
    class initSector{};
  };

  class hud {
    file="Framework\Hud";
    class initHud{};
    class updateHud{};
  };

  class resource {
    file="Framework\Resource";
    class addResource{};
    class getResource{};
    class addTick{};
  };

  class commander {
    file="Framework\Commander";
    class initCommander{};
    class spawnUnit{};
    class sectorWatcher{};
  };

};
