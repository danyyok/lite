package ru.vtosters.lite.ui;

import static ru.vtosters.lite.utils.Globals.convertDpToPixel;
import static ru.vtosters.lite.utils.Globals.getContext;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;

import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;

import com.vtosters.lite.fragments.MaterialPreferenceToolbarFragment;
import com.vtosters.lite.ui.MaterialSwitchPreference;

import java.util.Objects;

import ru.vtosters.lite.utils.Themes;

public class PreferencesUtil {

    public static Drawable setTint(Context ctx, Drawable d) {
        d.setColorFilter(Themes.getAccentColor(), PorterDuff.Mode.SRC_ATOP);
        return d;
    }

    public static void addListPreference(MaterialPreferenceToolbarFragment fragment, String key, String def, CharSequence title, CharSequence[] entries, CharSequence[] entriesValue) {
        ListPreference preference = new ListPreference(getContext());
        preference.setEntries(entries);
        preference.setEntries(entriesValue);
        preference.setTitle(title); // setTitle
        preference.setDialogTitle(title); // setDialogTitle
        preference.setKey(key); // setKey
        preference.setDefaultValue(def); // setDefaultValue
        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addListPreferenceIcon(MaterialPreferenceToolbarFragment fragment, String key, String def, CharSequence title, String icon, CharSequence summary, CharSequence[] entries, CharSequence[] entriesValue) {
        ListPreference preference = new ListPreference(getContext());
        preference.setEntries(entries);
        preference.setEntries(entriesValue);
        preference.setSummary(summary); // setSummary
        preference.setTitle(title); // setTitle
        preference.setDialogTitle(title); // setDialogTitle
        preference.setKey(key); // setKey
        preference.setDefaultValue(def); // setDefaultValue
        if (icon != null)
            preference.setIcon(setTint(getContext(), getDrawable(getContext(), icon))); // preference.setIcon
        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addMaterialSwitchPreference(MaterialPreferenceToolbarFragment materialPreferenceToolbarFragment, String key, CharSequence title, CharSequence summary, boolean defValue) {
        MaterialSwitchPreference materialSwitchPreference = new MaterialSwitchPreference(getContext());
        materialSwitchPreference.setTitle(title); // setTitle
        materialSwitchPreference.setSummary(summary); // setSummary
        materialSwitchPreference.setKey(key); // setKey
        materialSwitchPreference.setDefaultValue(defValue); // setDefaultValue

        materialPreferenceToolbarFragment.getPreferenceScreen().addPreference(materialSwitchPreference); // materialPreferenceToolbarFragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addMaterialSwitchPreference(MaterialPreferenceToolbarFragment fragment, String key, CharSequence title, CharSequence summary, int icon, boolean defValue, Preference.OnPreferenceChangeListener listener) {
        MaterialSwitchPreference materialSwitchPreference = new MaterialSwitchPreference(getContext());
        materialSwitchPreference.setTitle(title); // setTitle
        materialSwitchPreference.setSummary(summary); // setSummary
        materialSwitchPreference.setKey(key); // setKey
        materialSwitchPreference.setDefaultValue(defValue); // setDefaultValue
        materialSwitchPreference.setOnPreferenceChangeListener(listener); // setOnPreferenceClickListener

        if (icon != 1)
            materialSwitchPreference.setIcon(setTint(getContext(), Objects.requireNonNull(ContextCompat.getDrawable(getContext(), icon)))); // preference.setIcon

        fragment.getPreferenceScreen().addPreference(materialSwitchPreference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addMaterialSwitchPreference(MaterialPreferenceToolbarFragment fragment, String key, CharSequence title, CharSequence summary, String icon, boolean defValue, Preference.OnPreferenceChangeListener listener) {
        MaterialSwitchPreference materialSwitchPreference = new MaterialSwitchPreference(getContext());
        materialSwitchPreference.setTitle(title); // setTitle
        materialSwitchPreference.setSummary(summary); // setSummary
        materialSwitchPreference.setKey(key); // setKey
        materialSwitchPreference.setDefaultValue(defValue); // setDefaultValue
        fragment.getPreferenceScreen().addPreference(materialSwitchPreference); // materialPreferenceToolbarFragment.getPreferenceScreen().addPreference(preference)

        if (icon != null)
            materialSwitchPreference.setIcon(setTint(getContext(), getDrawable(getContext(), icon))); // preference.setIcon
        materialSwitchPreference.setOnPreferenceChangeListener(listener); // setOnPreferenceClickListener(listener)

        fragment.getPreferenceScreen().addPreference(materialSwitchPreference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addPreference(MaterialPreferenceToolbarFragment fragment, String key, CharSequence title, CharSequence summary) {
        Preference preference = new Preference(getContext());
        preference.setSummary(summary); // setSummary
        preference.setTitle(title); // setTitle
        preference.setKey(key); // setKey

        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addPreference(MaterialPreferenceToolbarFragment fragment, CharSequence title, CharSequence summary, @Nullable String icon, Preference.OnPreferenceClickListener listener) {
        Preference preference = new Preference(getContext());
        preference.setSummary(summary); // setSummary
        preference.setTitle(title); // setTitle

        if (icon != null)
            preference.setIcon(setTint(getContext(), getDrawable(getContext(), icon))); // preference.setIcon
        preference.setOnPreferenceClickListener(listener); // preference.setOnPreferenceClickListener(listener)

        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addPreference(MaterialPreferenceToolbarFragment fragment, String key, CharSequence title, CharSequence summary, @Nullable String icon, Preference.OnPreferenceClickListener listener) {
        Preference preference = new Preference(getContext());
        preference.setSummary(summary); // setSummary
        preference.setTitle(title); // setTitle
        preference.setKey(key); // setKey

        if (icon != null)
            preference.setIcon(setTint(getContext(), getDrawable(getContext(), icon))); // preference.setIcon
        preference.setOnPreferenceClickListener(listener); // preference.setOnPreferenceClickListener(listener)

        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addPreferenceDrawable(MaterialPreferenceToolbarFragment fragment, String key, CharSequence title, CharSequence summary, @Nullable Drawable icon, Preference.OnPreferenceClickListener listener) {
        Preference preference = new Preference(getContext());
        preference.setSummary(summary); // setSummary
        preference.setTitle(title); // setTitle
        preference.setKey(key); // setKey

        if (icon != null)
            preference.setIcon(icon); // preference.setIcon
        preference.setOnPreferenceClickListener(listener); // preference.setOnPreferenceClickListener(listener)

        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addPreferenceCategory(MaterialPreferenceToolbarFragment fragment, CharSequence title) {
        PreferenceCategory preference = new PreferenceCategory(getContext(), null);
        preference.setTitle(title); // setTitle
        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addPreferenceCategory(MaterialPreferenceToolbarFragment fragment, CharSequence title, int collapsedSize) {
        PreferenceCategory preference = new PreferenceCategory(getContext(), null);
        preference.setTitle(title); // setTitle
        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static void addEditTextPreference(MaterialPreferenceToolbarFragment fragment, String key, CharSequence title, EditTextPrefChangeListener editTextPrefChangeListener) {
        Preference preference = new Preference(getContext());

        preference.setTitle(title); // setTitle
        preference.setKey(key);  // setKey
        preference.setOnPreferenceClickListener(preference1 -> {
            LinearLayout linearLayout = new LinearLayout(getContext());

            final EditText editText = new EditText(getContext());
            editText.setText(PreferenceManager.getDefaultSharedPreferences(getContext()).getString(key, ""));
            editText.setHint(title);
            editText.setHintTextColor(PreferencesUtil.getSTextColor(getContext()));

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                editText.setBackgroundTintList(ColorStateList.valueOf(PreferencesUtil.getTextColor(getContext())));
            } else {
                ViewCompat.setBackgroundTintList(editText, ColorStateList.valueOf(PreferencesUtil.getTextColor(getContext())));
            }
            linearLayout.addView(editText);
            editText.getLayoutParams().width = ViewGroup.LayoutParams.MATCH_PARENT;
            ViewGroup.MarginLayoutParams margin = ((ViewGroup.MarginLayoutParams) editText.getLayoutParams());
            margin.setMargins(convertDpToPixel(24f), 0, convertDpToPixel(24f), 0);
            editText.setLayoutParams(margin);

            AlertDialog.Builder builder = new AlertDialog.Builder(fragment.getContext());
            builder.setTitle(title);
            builder.setView(linearLayout);
            builder.setPositiveButton("OK", (dialog, which) -> {
                boolean change = editTextPrefChangeListener.onChanged(preference, editText.getText().toString());
                if (!change)
                    return;

                PreferenceManager.getDefaultSharedPreferences(getContext())
                        .edit()
                        .putString(key, editText.getText().toString())
                        .apply();
            });
            builder.show();
            return false;
        }); // preference.setOnPreferenceClickListener(listener)

        fragment.getPreferenceScreen().addPreference(preference); // fragment.getPreferenceScreen().addPreference(preference)
    }

    public static int getTextColor(Context ctx) {
        TypedValue typedValue = new TypedValue();
        ctx.getTheme().resolveAttribute(Themes.getTextAttr(), typedValue, true);
        return typedValue.data;
    }

    public static int getSTextColor(Context ctx) {
        TypedValue typedValue = new TypedValue();
        ctx.getTheme().resolveAttribute(Themes.getSTextAttr(), typedValue, true);
        return typedValue.data;
    }

    private static Drawable getDrawable(Context ctx, String name) {
        var id = ctx.getResources().getIdentifier(name, "drawable", ctx.getPackageName());
        return ContextCompat.getDrawable(ctx, id);
    }

    public interface EditTextPrefChangeListener {
        boolean onChanged(Preference preference, Object obj);
    }
}
