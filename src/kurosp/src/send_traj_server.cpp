#include "ros/ros.h"
#include "kurosp/SendTrajectory.h"

#include "kuros.h"
#include "HandlingServer.hpp"


// create the kuros server
HandlingServer kserver;

/**
The servicing function.
TODO: how about putting this inside HandlingServer?
*/
bool send(kurosp::SendTrajectory::Request &req,
          kurosp::SendTrajectory::Request &res)
{
    if (!kserver.isAccepting())
    {
        res.success = false;
        return false; // should we return true anyway?
    }

    // empty trajectory vector
    trajectory_vec trajectory;

    // TODO: what is the most efficient way to move the data?
    int trajsize = req.frames.size();
    for (int i = 0; i < trajsize; ++i)  // for each frame
    {
        trajectory.push_back(frame_vec {   req.frames[i].position.x,
                                           req.frames[i].position.y,
                                           req.frames[i].position.z,
                                           req.frames[i].orientation.yaw,
                                           req.frames[i].orientation.pitch,
                                           req.frames[i].orientation.roll
                                       });

    }

    info_vec info(KUKA_INFO_SIZE);
    info[KUKA_RMODE] = req.info.response_mode;
    info[KUKA_RMS] = req.info.response_ms;
    info[KUKA_TRAJID] = req.info.traj_id;
    info[KUKA_RUN] = req.info.run;
    info[KUKA_VEL] = req.info.vel;
    info[KUKA_TOL] = req.info.tol;
    info[KUKA_FRAMETYPE] = req.info.frametype;

    kserver.sendTrajectory(info, trajectory);

    res.success = true;
    return true;
}


int main(int argc, char **argv)
{

    HandlingServer kserver;
    kserver.setReconnect(true);
    kserver.startListening();

    ros::init(argc, argv, "send_trajectory_server");
    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("send_trajectory", send);

    ROS_INFO("Ready to send trajectory to Kuka.");

    ros::spin();

    return 0;
}
