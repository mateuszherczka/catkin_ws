#ifndef HANDLINGSERVER_HPP
#define HANDLINGSERVER_HPP

#include "kuros.h"

#include "ros/ros.h"
#include "kurosp/SendTrajectory.h"

class HandlingServer : public Server
{
    public:
        HandlingServer();
        virtual ~HandlingServer();

        /*
        Handles incoming messages from robot.
        We have access to response object in server.
        */
        void handleResponse(const KukaResponse &response);// override;
        void handleDisconnect(); // override;

        bool sendService(kurosp::SendTrajectory::Request &req,
        kurosp::SendTrajectory::Response &res);

    protected:
    private:

        int handledCount;
};

#endif // HANDLINGSERVER_HPP
