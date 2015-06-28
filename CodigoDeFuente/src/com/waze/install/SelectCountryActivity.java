// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.SettingValueAdapter;
import com.waze.settings.SettingsValue;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

public final class SelectCountryActivity extends ActivityBase
{

    private static String countryCodes[] = {
        "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", 
        "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", 
        "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", 
        "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", 
        "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", 
        "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", 
        "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", 
        "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", 
        "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", 
        "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", 
        "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", 
        "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", 
        "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", 
        "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", 
        "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", 
        "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", 
        "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", 
        "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", 
        "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", 
        "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", 
        "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", 
        "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", 
        "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", 
        "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", 
        "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    };
    private static String countryNames[] = {
        "Afghanistan", "Aland Islands", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", 
        "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", 
        "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia, Plurinational State of", "Bonaire, Sint Eustatius and Saba", "Bosnia and Herzegovina", "Botswana", 
        "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", 
        "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", 
        "Congo", "Congo, the Democratic Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cura\u221A\337ao", "Cyprus", "Czech Republic", 
        "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", 
        "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", 
        "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", 
        "Guatemala", "Guernsey", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Island and McDonald Islands", "Holy See (Vatican City State)", "Honduras", "Hong Kong", 
        "Hungary", "Iceland", "India", "Indonesia", "Iran, Islamic Republic of", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy", 
        "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kuwait", 
        "Kyrgyzstan", "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", 
        "Macao", "Macedonia, the former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", 
        "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montenegro", "Montserrat", 
        "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "New Caledonia", "New Zealand", "Nicaragua", 
        "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Palestinian territories", 
        "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", 
        "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Barthelemy", "Saint Helena, Ascension and Tristan da Cunha", "Saint Kitts and Nevis", "Saint Lucia", "Saint Martin (French part)", "Saint Pierre and Miquelon", 
        "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", 
        "Sint Maarten (Dutch part)", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "South Sudan", "Spain", "Sri Lanka", 
        "Sudan", "Suriname", "Svalbard and Jan Mayen", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan", "Tajikistan", "Tanzania, United Republic of", 
        "Thailand", "Timor-Leste", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", 
        "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", 
        "Venezuela, Bolivarian Republic of", "Viet Nam", "Virgin Islands, British", "Virgin Islands, U.S.", "Wallis and Futuna", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"
    };
    private static String specialCountries[] = {
        "US", "IT", "FR", "GB", "ES"
    };
    private SettingsValue countries[];
    private NativeManager nativeManager;

    public SelectCountryActivity()
    {
    }

    private void addCountryToList(List list, Set set, Map map, String s)
    {
        if (!set.contains(s))
        {
            list.add((SettingsValue)map.get(s));
            set.add(s);
        }
    }

    private void initCountries()
    {
        int i;
        String s;
        ArrayList arraylist;
        HashSet hashset;
        HashMap hashmap;
        int j;
        i = 0;
        s = ((TelephonyManager)getSystemService("phone")).getNetworkCountryIso();
        if (s != null && s.length() > 0)
        {
            s = s.toUpperCase();
        }
        arraylist = new ArrayList();
        hashset = new HashSet();
        hashmap = new HashMap();
        j = 0;
_L5:
        if (j < countryNames.length) goto _L2; else goto _L1
_L1:
        String as[];
        int k;
        if (s != null && s.length() > 0)
        {
            addCountryToList(arraylist, hashset, hashmap, s);
        }
        as = specialCountries;
        k = as.length;
_L6:
        if (i < k) goto _L4; else goto _L3
_L3:
        int l = 0;
_L7:
        if (l >= countryNames.length)
        {
            countries = (SettingsValue[])arraylist.toArray(new SettingsValue[arraylist.size()]);
            return;
        }
        break MISSING_BLOCK_LABEL_205;
_L2:
        SettingsValue settingsvalue = new SettingsValue(countryCodes[j], countryNames[j], false);
        hashmap.put(countryCodes[j], settingsvalue);
        j++;
          goto _L5
_L4:
        addCountryToList(arraylist, hashset, hashmap, as[i]);
        i++;
          goto _L6
        addCountryToList(arraylist, hashset, hashmap, countryCodes[l]);
        l++;
          goto _L7
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        initCountries();
        NativeManager.getInstance().SignUplogAnalytics("LOCATION_COUNTRY", null, null, true);
        nativeManager = AppService.getNativeManager();
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, nativeManager.getLanguageString(getString(0x7f0700e1)), false);
        SettingValueAdapter settingvalueadapter = new SettingValueAdapter(this);
        ListView listview = (ListView)findViewById(0x7f090674);
        listview.setAdapter(settingvalueadapter);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SelectCountryActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                (new InstallNativeManager()).setCountry(countries[i].value);
            }

            
            {
                this$0 = SelectCountryActivity.this;
                super();
            }
        });
        settingvalueadapter.setValues(countries);
        listview.invalidateViews();
    }


}
