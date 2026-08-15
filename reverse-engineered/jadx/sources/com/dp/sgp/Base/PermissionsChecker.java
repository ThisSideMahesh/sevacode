package com.dp.sgp.Base;

import com.dp.sgp.R;
import com.dp.sgp.View.Activity.Home.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class PermissionsChecker {
    public static final int REQUEST_CODE_PERMISSIONS_CALENDAR = 3;
    public static final int REQUEST_CODE_PERMISSIONS_CAMERA = 4;
    public static final int REQUEST_CODE_PERMISSIONS_CAMERA_STORAGE = 6;
    public static final int REQUEST_CODE_PERMISSIONS_LOCATION = 2;
    public static final int REQUEST_CODE_PERMISSIONS_PHONE = 7;
    public static final int REQUEST_CODE_PERMISSIONS_STORAGE = 1;
    public static final int REQUEST_CODE_PERMISSIONS_VIDEO = 5;
    public static final String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    public static final String[] PERMISSIONS_LOCATION = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    public static final String[] PERMISSIONS_PHONE = {"android.permission.CALL_PHONE"};
    public static final String[] PERMISSIONS_CALENDAR = {"android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR"};
    public static final String[] PERMISSIONS_CAMERA = {"android.permission.CAMERA"};
    public static final String[] PERMISSIONS_AUDIO = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.RECORD_AUDIO"};
    public static final String[] PERMISSIONS_VIDEO = {"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.RECORD_AUDIO"};
    public static final String[] PERMISSIONS_CAMERA_STORAGE = {"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    public static int getStringID(int i) {
        switch (i) {
            case 1:
                return R.string.permission_photo_description;
            case 2:
                return R.string.permission_location_description;
            case 3:
                return R.string.permission_calender_description;
            case 4:
            case 6:
                return R.string.permission_camera_description;
            case 5:
                return R.string.permission_microphone_description;
            default:
                return R.string.runtime_permissions_txt;
        }
    }

    public static void requestPermission(BaseAppCompactActivity baseAppCompactActivity, String[] strArr, int i, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, strArr, i, permissionCallback);
    }

    public static void requestCameraAndStoragePermission(BaseAppCompactActivity baseAppCompactActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, PERMISSIONS_CAMERA_STORAGE, 6, permissionCallback);
    }

    public static void requestCameraAndStoragePermission(BaseFragment baseFragment, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseFragment.getActivity(), PERMISSIONS_CAMERA_STORAGE, 6, permissionCallback);
    }

    public static void requestCameraPermission(BaseAppCompactActivity baseAppCompactActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, PERMISSIONS_CAMERA, 4, permissionCallback);
    }

    public static void requestVideoPermission(BaseAppCompactActivity baseAppCompactActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, PERMISSIONS_VIDEO, 5, permissionCallback);
    }

    public static void requestStoragePermission(BaseAppCompactActivity baseAppCompactActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, PERMISSIONS_STORAGE, 1, permissionCallback);
    }

    public static void requestLocationPermission(MainActivity mainActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(mainActivity, PERMISSIONS_LOCATION, 2, permissionCallback);
    }

    public static void requestLocationPermission(BaseFragment baseFragment, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseFragment.getActivity(), PERMISSIONS_LOCATION, 2, permissionCallback);
    }

    public static void requestPhonePermission(BaseFragment baseFragment, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseFragment.getActivity(), PERMISSIONS_PHONE, 7, permissionCallback);
    }

    public static void requestPhonePermission(BaseAppCompactActivity baseAppCompactActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, PERMISSIONS_PHONE, 7, permissionCallback);
    }

    public static void requestCalendarPermission(BaseAppCompactActivity baseAppCompactActivity, PermissionCallback permissionCallback) {
        PermissionRequest.requestAppPermissions(baseAppCompactActivity, PERMISSIONS_CALENDAR, 3, permissionCallback);
    }
}
