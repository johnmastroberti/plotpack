#include <gtkmm/application.h>
#include "helloworld.hpp"

int main(int argc, char *argv[]) {
  auto app = Gtk::Application::create(argc, argv, "org.gtkmm.example");

  HelloWorld helloworld;

  return app->run(helloworld);
}
