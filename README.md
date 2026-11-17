# object_detection_msgs

Interfaces for object detection services, implemented by
[`yolo_rgbd_detector`](https://github.com/JRL-CARI-CNR-UNIBS/yolo_rgbd_detector).

| Interface | Description |
|---|---|
| `srv/DetectObjects` | One or more views (color + aligned depth + camera_info, an organized RGB point cloud, or color + camera_info + any cloud) in; per-view `Detection2DArray`, `Detection3DArray` in a target frame, and `DetectedObject[]` with all the information out |
| `msg/DetectedObject` | Class, score, views, 2D detection, oriented 3D box, surface centroid, number of points, dominant color |

Field documentation is in the comments of the `.msg`/`.srv` files and in
[`yolo_rgbd_detector/docs/API.md`](https://github.com/JRL-CARI-CNR-UNIBS/yolo_rgbd_detector/blob/main/docs/API.md).

License: Apache 2.0.
