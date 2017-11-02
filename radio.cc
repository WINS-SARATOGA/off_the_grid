/*
 * people.cc
 *
 *  Created on: Nov 2, 2017
 *      Author: sara
 */


#include <string.h>
#include <omnetpp.h>



class radio : public cSimpleModule
{
  protected:
    //virtual void initialize();
    virtual void handleMessage(cMessage *msg);
};

Define_Module(radio);


void radio::handleMessage(cMessage *msg)
{

    /*if (strcmp(msg->getArrivalGate()->getName(), "radio_in1")==0)
        send(msg, "radio_out1");
    else
        send(msg, "radio_out2");*/


    send(msg, "radio_out1");
    send(msg->dup(), "radio_out2");
    //send(msg, "radio_out2");
}

