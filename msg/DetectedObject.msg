# One object found by an object detection service, with all its information.

string id                    # unique in the response, e.g. "0_3" (view 0, detection 3);
                             # equal to detection_2d.id and detection_3d.id
string class_name            # e.g. "cup"
float32 score                # confidence [0, 1]
uint32[] views               # input views where the object was seen (several if merged)

# 2D detection in the image of views[0] (the view with the highest score).
# bbox: axis-aligned box in pixels; results[0].pose.pose.position.{x,y}:
# 2D centroid (mask centroid with segmentation models, else box center).
vision_msgs/Detection2D detection_2d

# 3D detection in the target frame. Valid only if has_3d is true.
# bbox: box enclosing the object's 3D points (outliers removed), rotated
# about the z axis of the target frame (yaw only). Points come from the
# visible surface, so the extent away from the camera is underestimated.
bool has_3d
vision_msgs/Detection3D detection_3d
geometry_msgs/Point surface_centroid   # median-depth point on the visible surface (target frame)
uint32 num_points                      # 3D points used for the box

# Dominant color: black, gray, white, red, orange, brown, yellow, green,
# cyan, blue, purple, pink. Empty if it could not be computed.
string color
std_msgs/ColorRGBA rgb                 # mean color of the dominant-color pixels, in [0, 1]
float32 color_fraction                 # share of the object pixels with that color
