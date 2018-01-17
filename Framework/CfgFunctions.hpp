class ADDON {

  tag = QUOTE(ADDON);

  class eventHandler {
    file="Framework\EventHandler";
    class onRespawn{};
    class onTicketLose{};
    class onTaskCompleted{};
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
  };

  class tfar {
    file="Framework\TFAR";
    class checkTFARConnection{};
  };

  class session {
    file="Framework\Session";
    class receiveData{};
  };

};
