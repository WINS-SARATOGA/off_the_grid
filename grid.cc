#include <string.h>
#include <omnetpp.h>



class grid : public cSimpleModule
{
  protected:
    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
};

Define_Module(grid);

void grid::initialize()
{
    /*if (strcmp("people", getName()) == 0)
    {
        cMessage *msg = new cMessage("Msg");
        send(msg, "wifi_out");
    }*/
}

void grid::handleMessage(cMessage *msg)
{
    send(msg, "wifi_out");
}

