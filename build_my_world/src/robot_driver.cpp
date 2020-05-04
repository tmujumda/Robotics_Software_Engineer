#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>

namespace gazebo
{
    class MyPusher : public ModelPlugin
    {
        private : physics::ModelPtr model;
        private : event::ConnectionPtr updateconnection;

        public : void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
        {
            this->model = _model;
            this->model->Reset();
            this->updateconnection = event::Events::ConnectWorldUpdateBegin(
                std::bind(&MyPusher::Updater,this)
            );

        }
        public : void Updater()
        {
            this->model->GetJoint("link_0_JOINT_1")->SetVelocity(0,0.5);
            this->model->GetJoint("link_0_JOINT_2")->SetVelocity(0,-0.5);
        }
    };
    GZ_REGISTER_MODEL_PLUGIN(MyPusher)
}