#ifndef HANDLINGSERVER_HPP
#define HANDLINGSERVER_HPP

#include "kuros.h"

#include "ros/ros.h"
#include "kurosp/SendTrajectory.h"

#include "sensor_msgs/JointState.h"

#include <boost/shared_ptr.hpp>

//typedef boost::shared_ptr<ros::Publisher> pub_ptr;


class HandlingServer : public Server
{
    public:
        HandlingServer();
        virtual ~HandlingServer();

        /*
        Handles incoming messages from robot.
        We have access to response object in server and its members:

        response.info
        response.frame
        response.axis

        */
        void handleResponse(const KukaResponse &response);// override;
        void handleDisconnect(); // override;

        void createPublishers(ros::NodeHandle &n);

    protected:
    private:

        ros::Publisher carState;
        ros::Publisher jointState;
        int handledCount;
};

#endif // HANDLINGSERVER_HPP
