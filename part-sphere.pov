#include "colors.inc"      
#include "textures.inc"
       
camera {
   location <0, 5, -15>
   angle 75
   look_at <0,3,3>
        }

light_source {
    <-1500,2500,-250>
    White
             }                    
           
plane{ y, -1 
       texture{ pigment{ color rgb <0.825,0.57,0.35>}
                normal { bumps 0.75 scale 0.025  }
                finish { phong 0.1 } 
              } 
     }  

sky_sphere { pigment { gradient <0,1,0>
                       color_map { [0.00 rgb <1.0,1.0,1.0>]
                                   [0.30 rgb <0.0,0.1,1.0>]
                                   [0.70 rgb <0.0,0.1,1.0>]
                                   [1.00 rgb <1.0,1.0,1.0>] 
                                 }          
                     } 
           }          
         
difference {
        sphere {
             <0, 0, 0>, 2
             pigment {White_Marble}
             finish { ambient 0.2 }   
               }
        sphere {
             <0, 3, 0>, 2
              pigment {White_Marble}
               }
        #if(clock <=0.45)
            rotate <1.0, 0, -clock*360>
            translate <-pi, 1, 0>
            translate <2*pi*clock, 0, 0>
        #else 
            rotate <0, 0, 180>
            translate<0.25, 0.5, 0>
        #end
            }         
            
            
         