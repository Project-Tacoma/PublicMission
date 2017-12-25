class framework {

  class eventHandler {
    file="Framework\EventHandler";
    class onRespawn{};
    class onTicketLose{};
    class onTaskCompleted{};
    class onSendQuery{};
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

  class database {
    file="Framework\Database";
    class connector{};
    class getPlayer{};
    class savePlayer{};
  };

};
