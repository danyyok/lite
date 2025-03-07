package ru.vtosters.lite.utils;

import com.vk.dto.user.UserProfile;
import com.vk.im.ui.providers.audiomsg.ImAudioMsgPlayerProvider;
import com.vk.im.ui.providers.audiomsg.PlayerActionSources;
import com.vtosters.lite.api.ExtendedUserProfile;
import com.vtosters.lite.auth.VKAccountManager;
import com.vtosters.lite.im.ImEngineProvider;

public class AccountManagerUtils {

    public static int getUserId() {
        return VKAccountManager.d().D0();
    } // Current UserId

    public static boolean isVKTester() {
        return VKAccountManager.d().k0().equals("tester");
    } // is vk tester

    public static boolean isVKWorker() {
        return VKAccountManager.d().k0().equals("worker");
    }

    public static String getUserSecret() {
        return VKAccountManager.d().l0();
    }

    public static String getUserToken() {
        return VKAccountManager.d().b();
    }

    public static String getUsername() {
        return VKAccountManager.d().Z();
    }

    public static String getUserPhoto() {
        return VKAccountManager.d().d0();
    }

    public static String getUserFirstName(UserProfile userProfile) {
        return userProfile.c;
    }

    public static String getUserLastName(UserProfile userProfile) {
        return userProfile.e;
    }

    public static String getGroupName(UserProfile userProfile) {
        return userProfile.d;
    }

    public static int getUserID(UserProfile userProfile) {
        return userProfile.b;
    } // UserId Profile via userProfile

    public static int getUserID(ExtendedUserProfile extendedUserProfile) {
        return getUserID(fromEup(extendedUserProfile));
    } // UserId Profile via extendedUserProfile

    public static UserProfile fromEup(ExtendedUserProfile extendedUserProfile) {
        return extendedUserProfile.a;
    }

    public static void reloadMSG() {
        ImEngineProvider.b().a();
        ImAudioMsgPlayerProvider.b().e(PlayerActionSources.a);
        ImAudioMsgPlayerProvider.b().d(PlayerActionSources.a);
    } // Delete and reload msg cache
}
