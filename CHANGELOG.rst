^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package object_detection_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.1.0 (2026-11-17)
------------------
* First release.
* ``srv/DetectObjects``: multi-view detection request (color + aligned depth +
  camera_info, organized RGB point cloud, or color + camera_info + any cloud)
  returning per-view ``Detection2DArray``, a ``Detection3DArray`` in the target
  frame and ``DetectedObject[]``.
* ``msg/DetectedObject``: class, score, views, 2D detection, oriented 3D box,
  surface centroid, number of points, dominant color.
