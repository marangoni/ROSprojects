#ifndef _ROS_arduino_control_tutorials_Ardubot_h
#define _ROS_arduino_control_tutorials_Ardubot_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace arduino_control_tutorials
{

  class Ardubot : public ros::Msg
  {
    public:
      typedef int32_t _base_deg_type;
      _base_deg_type base_deg;
      typedef int32_t _waist_deg_type;
      _waist_deg_type waist_deg;
      typedef int32_t _shoulder_deg_type;
      _shoulder_deg_type shoulder_deg;

    Ardubot():
      base_deg(0),
      waist_deg(0),
      shoulder_deg(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      union {
        int32_t real;
        uint32_t base;
      } u_base_deg;
      u_base_deg.real = this->base_deg;
      *(outbuffer + offset + 0) = (u_base_deg.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_base_deg.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_base_deg.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_base_deg.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->base_deg);
      union {
        int32_t real;
        uint32_t base;
      } u_waist_deg;
      u_waist_deg.real = this->waist_deg;
      *(outbuffer + offset + 0) = (u_waist_deg.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_waist_deg.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_waist_deg.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_waist_deg.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->waist_deg);
      union {
        int32_t real;
        uint32_t base;
      } u_shoulder_deg;
      u_shoulder_deg.real = this->shoulder_deg;
      *(outbuffer + offset + 0) = (u_shoulder_deg.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_shoulder_deg.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_shoulder_deg.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_shoulder_deg.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->shoulder_deg);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      union {
        int32_t real;
        uint32_t base;
      } u_base_deg;
      u_base_deg.base = 0;
      u_base_deg.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_base_deg.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_base_deg.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_base_deg.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->base_deg = u_base_deg.real;
      offset += sizeof(this->base_deg);
      union {
        int32_t real;
        uint32_t base;
      } u_waist_deg;
      u_waist_deg.base = 0;
      u_waist_deg.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_waist_deg.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_waist_deg.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_waist_deg.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->waist_deg = u_waist_deg.real;
      offset += sizeof(this->waist_deg);
      union {
        int32_t real;
        uint32_t base;
      } u_shoulder_deg;
      u_shoulder_deg.base = 0;
      u_shoulder_deg.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_shoulder_deg.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_shoulder_deg.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_shoulder_deg.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->shoulder_deg = u_shoulder_deg.real;
      offset += sizeof(this->shoulder_deg);
     return offset;
    }

    virtual const char * getType() override { return "arduino_control_tutorials/Ardubot"; };
    virtual const char * getMD5() override { return "25c6d417204f56ff08c29e46dee18838"; };

  };

}
#endif
