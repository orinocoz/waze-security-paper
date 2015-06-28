// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

// Referenced classes of package com.waze.reports:
//            OpeningHours, CandidateProduct

public class VenueData
    implements Parcelable, Serializable, Cloneable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public VenueData createFromParcel(Parcel parcel)
        {
            return new VenueData(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public VenueData[] newArray(int i)
        {
            return new VenueData[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public static final int FlagRequest_Type_ARRAYSIZE = 11;
    public static final int FlagRequest_Type_CLOSED = 1;
    public static final int FlagRequest_Type_DOES_NOT_MATCH_SEARCH = 10;
    public static final int FlagRequest_Type_DUPLICATE = 4;
    public static final int FlagRequest_Type_INAPPROPRIATE = 5;
    public static final int FlagRequest_Type_LOW_QUALITY = 7;
    public static final int FlagRequest_Type_MOVED = 2;
    public static final int FlagRequest_Type_OTHER = 9;
    public static final int FlagRequest_Type_RESIDENTIAL = 3;
    public static final int FlagRequest_Type_UNRELATED = 8;
    public static final int FlagRequest_Type_WRONG_DETAILS = 6;
    public static int MAX_ARR_SIZE = 0;
    private static final long serialVersionUID = 1L;
    public String RoutingContext;
    public String about;
    public String aliases[];
    public boolean bHasMoreData;
    public boolean bResidence;
    public boolean bUpdateable;
    public String brand;
    public String categories[];
    public String city;
    public String context;
    public String country;
    public String details;
    public String houseNumber;
    public String id;
    public boolean imageByMe[];
    public boolean imageLiked[];
    public String imageReporterMoods[];
    public String imageReporters[];
    public String imageThumbnailURLs[];
    public String imageURLs[];
    public int latitude;
    public int longitude;
    public String name;
    public String newImageIds[];
    public int numAliases;
    public int numCategories;
    public int numImages;
    public int numNewImages;
    public int numOpeningHours;
    public int numProducts;
    public int numServices;
    public OpeningHours openingHours[];
    public String phoneNumber;
    public CandidateProduct products[];
    public String providerId;
    public String reporter;
    public String reporterMood;
    public String services[];
    public String state;
    public String street;
    public String updater;
    public String updaterMood;
    public boolean wasLocationChanged;
    public String website;
    public String websiteDisplayText;
    public String zip;

    public VenueData()
    {
        numImages = 0;
        numNewImages = 0;
        wasLocationChanged = false;
        numCategories = 0;
        numServices = 0;
        numOpeningHours = 0;
        numAliases = 0;
        numProducts = 0;
        imageURLs = new String[MAX_ARR_SIZE];
        imageThumbnailURLs = new String[MAX_ARR_SIZE];
        imageReporters = new String[MAX_ARR_SIZE];
        imageReporterMoods = new String[MAX_ARR_SIZE];
        imageLiked = new boolean[MAX_ARR_SIZE];
        imageByMe = new boolean[MAX_ARR_SIZE];
        newImageIds = new String[MAX_ARR_SIZE];
        categories = new String[MAX_ARR_SIZE];
        services = new String[MAX_ARR_SIZE];
        openingHours = new OpeningHours[MAX_ARR_SIZE];
        aliases = new String[MAX_ARR_SIZE];
        products = new CandidateProduct[MAX_ARR_SIZE];
    }

    public VenueData(Parcel parcel)
    {
        boolean flag = true;
        this();
        id = parcel.readString();
        name = parcel.readString();
        providerId = parcel.readString();
        boolean flag1;
        boolean flag2;
        if (parcel.readInt() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        bUpdateable = flag1;
        if (parcel.readInt() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        bResidence = flag2;
        parcel.readStringArray(imageURLs);
        parcel.readStringArray(imageThumbnailURLs);
        parcel.readStringArray(imageReporters);
        parcel.readStringArray(imageReporterMoods);
        parcel.readBooleanArray(imageLiked);
        parcel.readBooleanArray(imageByMe);
        numImages = parcel.readInt();
        parcel.readStringArray(newImageIds);
        numNewImages = parcel.readInt();
        street = parcel.readString();
        houseNumber = parcel.readString();
        city = parcel.readString();
        longitude = parcel.readInt();
        latitude = parcel.readInt();
        if (parcel.readInt() == 0)
        {
            flag = false;
        }
        wasLocationChanged = flag;
        parcel.readStringArray(categories);
        numCategories = parcel.readInt();
        parcel.readStringArray(services);
        numServices = parcel.readInt();
        parcel.readTypedArray(openingHours, OpeningHours.CREATOR);
        numOpeningHours = parcel.readInt();
        parcel.readStringArray(aliases);
        numAliases = parcel.readInt();
        parcel.readTypedArray(products, CandidateProduct.CREATOR);
        numProducts = parcel.readInt();
        about = parcel.readString();
        phoneNumber = parcel.readString();
        website = parcel.readString();
        websiteDisplayText = parcel.readString();
        context = parcel.readString();
        reporter = parcel.readString();
        reporterMood = parcel.readString();
        updater = parcel.readString();
        updaterMood = parcel.readString();
    }

    private String cloneString(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return new String(s);
        }
    }

    public void addCategory(String s)
    {
        if (numCategories == MAX_ARR_SIZE)
        {
            return;
        } else
        {
            categories[numCategories] = s;
            numCategories = 1 + numCategories;
            return;
        }
    }

    public void addImage(String s, String s1, String s2)
    {
        do
        {
            if (numImages < MAX_ARR_SIZE)
            {
                imageURLs[numImages] = s;
                imageThumbnailURLs[numImages] = s1;
                imageReporters[numImages] = s2;
                imageReporterMoods[numImages] = null;
                imageLiked[numImages] = false;
                imageByMe[numImages] = false;
                numImages = 1 + numImages;
                return;
            }
            removeImage(0);
        } while (true);
    }

    public void addNewImageId(String s)
    {
        if (numNewImages == MAX_ARR_SIZE)
        {
            return;
        } else
        {
            newImageIds[numNewImages] = s;
            numNewImages = 1 + numNewImages;
            return;
        }
    }

    public void addOpHrs(OpeningHours openinghours)
    {
        if (numOpeningHours == MAX_ARR_SIZE)
        {
            return;
        } else
        {
            openingHours[numOpeningHours] = openinghours;
            numOpeningHours = 1 + numOpeningHours;
            return;
        }
    }

    public VenueData clone()
    {
        VenueData venuedata;
        int i;
        venuedata = new VenueData();
        venuedata.id = cloneString(id);
        venuedata.name = cloneString(name);
        venuedata.providerId = cloneString(providerId);
        venuedata.bUpdateable = bUpdateable;
        venuedata.bResidence = bResidence;
        venuedata.numImages = Math.min(venuedata.imageURLs.length, numImages);
        i = 0;
_L13:
        if (i < venuedata.numImages) goto _L2; else goto _L1
_L1:
        int j;
        venuedata.numNewImages = Math.min(venuedata.newImageIds.length, numNewImages);
        j = 0;
_L14:
        if (j < venuedata.numNewImages) goto _L4; else goto _L3
_L3:
        int k;
        venuedata.street = cloneString(street);
        venuedata.houseNumber = cloneString(houseNumber);
        venuedata.city = cloneString(city);
        venuedata.longitude = longitude;
        venuedata.latitude = latitude;
        venuedata.wasLocationChanged = wasLocationChanged;
        venuedata.numCategories = Math.min(venuedata.categories.length, numCategories);
        k = 0;
_L15:
        if (k < venuedata.numCategories) goto _L6; else goto _L5
_L5:
        int l;
        venuedata.numServices = Math.min(venuedata.services.length, numServices);
        l = 0;
_L16:
        if (l < venuedata.numServices) goto _L8; else goto _L7
_L7:
        int i1;
        venuedata.numOpeningHours = Math.min(venuedata.openingHours.length, numOpeningHours);
        i1 = 0;
_L17:
        if (i1 < venuedata.numOpeningHours) goto _L10; else goto _L9
_L9:
        int j1;
        venuedata.numAliases = Math.min(venuedata.aliases.length, numAliases);
        j1 = 0;
_L18:
        if (j1 < venuedata.numAliases) goto _L12; else goto _L11
_L11:
        int k1;
        venuedata.numProducts = Math.min(venuedata.products.length, numProducts);
        k1 = 0;
_L19:
        if (k1 >= venuedata.numProducts)
        {
            venuedata.about = cloneString(about);
            venuedata.phoneNumber = cloneString(phoneNumber);
            venuedata.website = cloneString(website);
            venuedata.websiteDisplayText = cloneString(websiteDisplayText);
            venuedata.context = cloneString(context);
            venuedata.reporter = cloneString(reporter);
            venuedata.reporterMood = cloneString(reporterMood);
            venuedata.updater = cloneString(updater);
            venuedata.updaterMood = cloneString(updaterMood);
            return venuedata;
        }
        break MISSING_BLOCK_LABEL_637;
_L2:
        venuedata.imageURLs[i] = cloneString(imageURLs[i]);
        venuedata.imageThumbnailURLs[i] = cloneString(imageThumbnailURLs[i]);
        venuedata.imageReporters[i] = cloneString(imageReporters[i]);
        venuedata.imageReporterMoods[i] = cloneString(imageReporterMoods[i]);
        venuedata.imageLiked[i] = imageLiked[i];
        venuedata.imageByMe[i] = imageByMe[i];
        i++;
          goto _L13
_L4:
        venuedata.newImageIds[j] = cloneString(newImageIds[j]);
        j++;
          goto _L14
_L6:
        venuedata.categories[k] = cloneString(categories[k]);
        k++;
          goto _L15
_L8:
        venuedata.services[l] = cloneString(services[l]);
        l++;
          goto _L16
_L10:
        venuedata.openingHours[i1] = new OpeningHours(openingHours[i1]);
        i1++;
          goto _L17
_L12:
        venuedata.aliases[j1] = cloneString(aliases[j1]);
        j1++;
          goto _L18
        venuedata.products[k1] = new CandidateProduct(products[k1]);
        k1++;
          goto _L19
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAddressString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (street != null && !street.isEmpty())
        {
            stringbuilder.append(street);
            if (houseNumber != null && !houseNumber.isEmpty())
            {
                stringbuilder.append(" ");
                stringbuilder.append(houseNumber);
            }
        }
        if (city != null && !city.isEmpty())
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(city);
        }
        return stringbuilder.toString();
    }

    public boolean removeCategory(String s)
    {
        boolean flag;
        int i;
        flag = false;
        if (numCategories == 0)
        {
            return false;
        }
        i = 0;
_L2:
        if (i >= numCategories)
        {
            if (flag)
            {
                numCategories = -1 + numCategories;
                categories[numCategories] = null;
            }
            return flag;
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        categories[i - 1] = categories[i];
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (!s.equals(categories[i])) goto _L4; else goto _L3
_L3:
        flag = true;
          goto _L4
    }

    public boolean removeImage(int i)
    {
        while (numImages <= i || i < 0) 
        {
            return false;
        }
        int j = i + 1;
        do
        {
            if (j >= numImages)
            {
                numImages = -1 + numImages;
                imageURLs[numImages] = null;
                imageThumbnailURLs[numImages] = null;
                imageReporters[numImages] = null;
                imageReporterMoods[numImages] = null;
                imageLiked[numImages] = false;
                imageByMe[numImages] = false;
                return true;
            }
            imageURLs[j - 1] = imageURLs[j];
            imageThumbnailURLs[j - 1] = imageThumbnailURLs[j];
            imageReporters[j - 1] = imageReporters[j];
            imageReporterMoods[j - 1] = imageReporterMoods[j];
            imageLiked[j - 1] = imageLiked[j];
            imageByMe[j - 1] = imageByMe[j];
            j++;
        } while (true);
    }

    public boolean removeNewImageId(int i)
    {
        while (numNewImages <= i || i < 0) 
        {
            return false;
        }
        int j = i + 1;
        do
        {
            if (j >= numNewImages)
            {
                numNewImages = -1 + numNewImages;
                newImageIds[numNewImages] = null;
                return true;
            }
            newImageIds[j - 1] = newImageIds[j];
            j++;
        } while (true);
    }

    public void replaceImage(String s, String s1, String s2)
    {
        int i = 0;
        do
        {
            if (i >= numImages)
            {
                return;
            }
            if (imageURLs[i].contentEquals(s))
            {
                imageURLs[i] = s1;
                imageThumbnailURLs[i] = s2;
                imageLiked[i] = false;
                imageByMe[i] = true;
                return;
            }
            i++;
        } while (true);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeString(id);
        parcel.writeString(name);
        parcel.writeString(providerId);
        int k;
        int l;
        if (bUpdateable)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeInt(k);
        if (bResidence)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        parcel.writeStringArray(imageURLs);
        parcel.writeStringArray(imageThumbnailURLs);
        parcel.writeStringArray(imageReporters);
        parcel.writeStringArray(imageReporterMoods);
        parcel.writeBooleanArray(imageLiked);
        parcel.writeBooleanArray(imageByMe);
        parcel.writeInt(numImages);
        parcel.writeStringArray(newImageIds);
        parcel.writeInt(numNewImages);
        parcel.writeString(street);
        parcel.writeString(houseNumber);
        parcel.writeString(city);
        parcel.writeInt(longitude);
        parcel.writeInt(latitude);
        if (!wasLocationChanged)
        {
            j = 0;
        }
        parcel.writeInt(j);
        parcel.writeStringArray(categories);
        parcel.writeInt(numCategories);
        parcel.writeStringArray(services);
        parcel.writeInt(numServices);
        parcel.writeTypedArray(openingHours, 0);
        parcel.writeInt(numOpeningHours);
        parcel.writeStringArray(aliases);
        parcel.writeInt(numAliases);
        parcel.writeTypedArray(products, 0);
        parcel.writeInt(numProducts);
        parcel.writeString(about);
        parcel.writeString(phoneNumber);
        parcel.writeString(website);
        parcel.writeString(websiteDisplayText);
        parcel.writeString(context);
        parcel.writeString(reporter);
        parcel.writeString(reporterMood);
        parcel.writeString(updater);
        parcel.writeString(updaterMood);
    }

    static 
    {
        MAX_ARR_SIZE = 30;
    }
}
