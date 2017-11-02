#include <string.h>
#include <omnetpp.h>



class people : public cSimpleModule
{
  protected:
    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
};

Define_Module(people);

void people::initialize()
{
    if (strcmp("people", getName()) == 0)
    {
        cMessage *msg = new cMessage("Msg");
        send(msg, "wifi_out");
    }
}

void people::handleMessage(cMessage *msg)
{
    send(msg, "wifi_out");
}

