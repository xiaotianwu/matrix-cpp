// Author: xiaotian.wu

#ifndef CORE_UTIL_TASK
#define CORE_UTIL_TASK

#include <string>

class TaskConstraint {
 public:
  TaskConstraint(
      float cpus,
      int32_t mem,
      std::string host,
      int32_t rack = -1)
    : cpus_(cpu),
      mems_(mem),
      host_(host),
      rack_(rack) {
  }
      
  std::string to_string() {
    return "cpus: " + cpus_ +
           " mem: " + mem_ +
           " host: " + host_ +
           " rack: " + rack_;
  }

 private:
  const float cpus_;
  const int32_t mem_;
  const std::string host_;
  const int32_t rack_;
};

class Task {
 public:
  Task(int32_t id,
       std::string name,
       std::string docker_image,
       const TaskConstraint& constraint,
       std::string command,
       int32_t offer_id,
       int32_t slave_id,
       int32_t executor_id,
       std::string host)
    : id_(id),
      name_(name),
      docker_image_(docker_image),
      constraint_(constraint),
      command_(command),
      offer_id_(offer_id),
      slave_id_(slave_id),
      executor_id_(executor_id),
      host_(host) {
  }

  std::string to_string() {
    return "";
  }

 private:
  const int32_t id_;
  const std::string name_;
  const std::string docker_image_;
  const TaskConstraint constraint_;
  const std::string command_;
  const int32_t offer_id_;
  const int32_t slave_id_;
  const int32_t executor_id_;
  const std::string host_;
};

#endif
