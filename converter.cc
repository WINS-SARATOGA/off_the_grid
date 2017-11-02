/*
 * people.cc
 *
 *  Created on: Nov 2, 2017
 *      Author: sara
 */


#include <string.h>
#include <omnetpp.h>



class converter : public cSimpleModule
{
  protected:
    //virtual void initialize();
    virtual void handleMessage(cMessage *msg);
};

Define_Module(converter);


void converter::handleMessage(cMessage *msg)
{
    if (strcmp(msg->getArrivalGate()->getName(), "wifi_in")==0)
        send(msg, "radio_out");
    else
        send(msg, "wifi_out");
}

