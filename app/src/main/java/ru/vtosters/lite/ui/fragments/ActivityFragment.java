package ru.vtosters.lite.ui.fragments;

import static ru.vtosters.lite.utils.AndroidUtils.getIdentifier;
import static ru.vtosters.lite.utils.Preferences.offline;

import android.os.Bundle;

import androidx.preference.Preference;

import com.vtosters.lite.general.fragments.MaterialPreferenceToolbarFragment;

public class ActivityFragment extends MaterialPreferenceToolbarFragment {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(getIdentifier("preferences_activity", "xml"));
        findPreference("setoffline").setEnabled(offline());
    }

    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        findPreference("setoffline").setEnabled(offline());
        return super.onPreferenceTreeClick(preference);
    }
}
