#ifndef CORE_TASK_MANAGER_HPP
#define CORE_TASK_MANAGER_HPP

#include <vector>
#include <process/process.hpp>

#include "core/task.hpp"

class TaskManager : public Process<TaskManager> {
 public:
  TaskManager() {}
  virtual ~TaskManager()  {}

  void add(const Task& task) {}
  void add(const std::vector<Task>& tasks) {}
  void remove(int32_t task_id) {}
  void get(int32_t task_id) {}
  void recover(int32_t task_id) {}

 private:
}

#endif
