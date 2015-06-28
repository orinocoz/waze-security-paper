// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

// Referenced classes of package com.waze.ifs.ui:
//            WazePagerAdapter

public class WazeViewPager extends ViewGroup
{
    static interface Decor
    {
    }

    static class ItemInfo
    {

        Object object;
        float offset;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo()
        {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams
    {

        int childIndex;
        public int gravity;
        public boolean isDecor;
        boolean needsMeasure;
        int position;
        float widthFactor;

        public LayoutParams()
        {
            super(-1, -1);
            widthFactor = 0.0F;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            widthFactor = 0.0F;
            TypedArray typedarray = context.obtainStyledAttributes(attributeset, WazeViewPager.LAYOUT_ATTRS);
            gravity = typedarray.getInteger(0, 48);
            typedarray.recycle();
        }
    }

    class MyAccessibilityDelegate extends AccessibilityDelegateCompat
    {

        final WazeViewPager this$0;

        private boolean canScroll()
        {
            return mAdapter != null && mAdapter.getCount() > 1;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
        {
            super.onInitializeAccessibilityEvent(view, accessibilityevent);
            accessibilityevent.setClassName(com/waze/ifs/ui/WazeViewPager.getName());
            AccessibilityRecordCompat accessibilityrecordcompat = AccessibilityRecordCompat.obtain();
            accessibilityrecordcompat.setScrollable(canScroll());
            if (accessibilityevent.getEventType() == 4096 && mAdapter != null)
            {
                accessibilityrecordcompat.setItemCount(mAdapter.getCount());
                accessibilityrecordcompat.setFromIndex(mCurItem);
                accessibilityrecordcompat.setToIndex(mCurItem);
            }
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat);
            accessibilitynodeinfocompat.setClassName(com/waze/ifs/ui/WazeViewPager.getName());
            accessibilitynodeinfocompat.setScrollable(canScroll());
            if (canScrollHorizontally(1))
            {
                accessibilitynodeinfocompat.addAction(4096);
            }
            if (canScrollHorizontally(-1))
            {
                accessibilitynodeinfocompat.addAction(8192);
            }
        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle)
        {
            if (super.performAccessibilityAction(view, i, bundle))
            {
                return true;
            }
            switch (i)
            {
            default:
                return false;

            case 4096: 
                if (canScrollHorizontally(1))
                {
                    setCurrentItem(1 + mCurItem);
                    return true;
                } else
                {
                    return false;
                }

            case 8192: 
                break;
            }
            if (canScrollHorizontally(-1))
            {
                setCurrentItem(-1 + mCurItem);
                return true;
            } else
            {
                return false;
            }
        }

        MyAccessibilityDelegate()
        {
            this$0 = WazeViewPager.this;
            super();
        }
    }

    static interface OnAdapterChangeListener
    {

        public abstract void onAdapterChanged(WazePagerAdapter wazepageradapter, WazePagerAdapter wazepageradapter1);
    }

    public static interface OnPageChangeListener
    {

        public abstract void onPageScrollStateChanged(int i);

        public abstract void onPageScrolled(int i, float f, int j);

        public abstract void onPageSelected(int i);
    }

    public static interface PageTransformer
    {

        public abstract void transformPage(View view, float f);
    }

    private class PagerObserver extends DataSetObserver
    {

        final WazeViewPager this$0;

        public void onChanged()
        {
            dataSetChanged();
        }

        public void onInvalidated()
        {
            dataSetChanged();
        }

        private PagerObserver()
        {
            this$0 = WazeViewPager.this;
            super();
        }

        PagerObserver(PagerObserver pagerobserver)
        {
            this();
        }
    }

    public static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {

            public SavedState createFromParcel(Parcel parcel, ClassLoader classloader)
            {
                return new SavedState(parcel, classloader);
            }

            public volatile Object createFromParcel(Parcel parcel, ClassLoader classloader)
            {
                return createFromParcel(parcel, classloader);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        });
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        public String toString()
        {
            return (new StringBuilder("FragmentPager.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" position=").append(position).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeInt(position);
            parcel.writeParcelable(adapterState, i);
        }


        SavedState(Parcel parcel, ClassLoader classloader)
        {
            super(parcel);
            if (classloader == null)
            {
                classloader = getClass().getClassLoader();
            }
            position = parcel.readInt();
            adapterState = parcel.readParcelable(classloader);
            loader = classloader;
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public static class SimpleOnPageChangeListener
        implements OnPageChangeListener
    {

        public void onPageScrollStateChanged(int i)
        {
        }

        public void onPageScrolled(int i, float f, int j)
        {
        }

        public void onPageSelected(int i)
        {
        }

        public SimpleOnPageChangeListener()
        {
        }
    }

    static class ViewPositionComparator
        implements Comparator
    {

        public int compare(View view, View view1)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
            if (layoutparams.isDecor != layoutparams1.isDecor)
            {
                return !layoutparams.isDecor ? -1 : 1;
            } else
            {
                return layoutparams.position - layoutparams1.position;
            }
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((View)obj, (View)obj1);
        }

        ViewPositionComparator()
        {
        }
    }


    private static final int CLOSE_ENOUGH = 2;
    private static final Comparator COMPARATOR = new Comparator() {

        public int compare(ItemInfo iteminfo, ItemInfo iteminfo1)
        {
            return iteminfo.position - iteminfo1.position;
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ItemInfo)obj, (ItemInfo)obj1);
        }

    };
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int LAYOUT_ATTRS[] = {
        0x10100b3
    };
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE;
    private static final Interpolator sInterpolator = new Interpolator() {

        public float getInterpolation(float f)
        {
            float f1 = f - 1.0F;
            return 1.0F + f1 * (f1 * (f1 * (f1 * f1)));
        }

    };
    private static final ViewPositionComparator sPositionComparator = new ViewPositionComparator();
    private int mActivePointerId;
    private WazePagerAdapter mAdapter;
    private OnAdapterChangeListener mAdapterChangeListener;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mIgnoreGutter;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private final ArrayList mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private OnPageChangeListener mOnPageChangeListener;
    private int mPageMargin;
    private PageTransformer mPageTransformer;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private final ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public WazeViewPager(Context context)
    {
        super(context);
        mItems = new ArrayList();
        mTempItem = new ItemInfo();
        mTempRect = new Rect();
        mRestoredCurItem = -1;
        mRestoredAdapterState = null;
        mRestoredClassLoader = null;
        mFirstOffset = -3.402823E+38F;
        mLastOffset = 3.402823E+38F;
        mOffscreenPageLimit = 1;
        mActivePointerId = -1;
        mFirstLayout = true;
        mNeedCalculatePageOffsets = false;
        mEndScrollRunnable = new Runnable() {

            final WazeViewPager this$0;

            public void run()
            {
                setScrollState(0);
                populate();
            }

            
            {
                this$0 = WazeViewPager.this;
                super();
            }
        };
        mScrollState = 0;
        initViewPager();
    }

    public WazeViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mItems = new ArrayList();
        mTempItem = new ItemInfo();
        mTempRect = new Rect();
        mRestoredCurItem = -1;
        mRestoredAdapterState = null;
        mRestoredClassLoader = null;
        mFirstOffset = -3.402823E+38F;
        mLastOffset = 3.402823E+38F;
        mOffscreenPageLimit = 1;
        mActivePointerId = -1;
        mFirstLayout = true;
        mNeedCalculatePageOffsets = false;
        mEndScrollRunnable = new _cls3();
        mScrollState = 0;
        initViewPager();
    }

    private void calculatePageOffsets(ItemInfo iteminfo, int i, ItemInfo iteminfo1)
    {
        int j;
        float f;
        float f1;
        int i1;
        int j1;
        float f4;
        int l1;
        int i2;
        int k2;
        int j3;
        float f6;
        int k3;
        j = mAdapter.getCount();
        int k = getClientWidth();
        int l;
        if (k > 0)
        {
            f = (float)mPageMargin / (float)k;
        } else
        {
            f = 0.0F;
        }
        if (iteminfo1 == null) goto _L2; else goto _L1
_L1:
        k2 = iteminfo1.position;
        if (k2 >= iteminfo.position) goto _L4; else goto _L3
_L3:
        j3 = 0;
        f6 = f + (iteminfo1.offset + iteminfo1.widthFactor);
        k3 = k2 + 1;
_L9:
        if (k3 <= iteminfo.position && j3 < mItems.size()) goto _L5; else goto _L2
_L2:
        l = mItems.size();
        f1 = iteminfo.offset;
        i1 = -1 + iteminfo.position;
        float f2;
        float f3;
        int l2;
        float f5;
        int i3;
        ItemInfo iteminfo4;
        ItemInfo iteminfo5;
        if (iteminfo.position == 0)
        {
            f2 = iteminfo.offset;
        } else
        {
            f2 = -3.402823E+38F;
        }
        mFirstOffset = f2;
        if (iteminfo.position == j - 1)
        {
            f3 = (iteminfo.offset + iteminfo.widthFactor) - 1.0F;
        } else
        {
            f3 = 3.402823E+38F;
        }
        mLastOffset = f3;
        j1 = i - 1;
          goto _L6
_L5:
        iteminfo5 = (ItemInfo)mItems.get(j3);
_L10:
        if (k3 > iteminfo5.position && j3 < -1 + mItems.size()) goto _L8; else goto _L7
_L7:
        if (k3 < iteminfo5.position)
        {
            break MISSING_BLOCK_LABEL_316;
        }
        iteminfo5.offset = f6;
        f6 += f + iteminfo5.widthFactor;
        k3++;
          goto _L9
_L8:
        j3++;
        iteminfo5 = (ItemInfo)mItems.get(j3);
          goto _L10
        f6 += f + mAdapter.getPageWidth(k3);
        k3++;
          goto _L7
_L4:
        if (k2 <= iteminfo.position) goto _L2; else goto _L11
_L11:
        l2 = -1 + mItems.size();
        f5 = iteminfo1.offset;
        i3 = k2 - 1;
_L15:
        if (i3 < iteminfo.position || l2 < 0) goto _L2; else goto _L12
_L12:
        iteminfo4 = (ItemInfo)mItems.get(l2);
_L16:
        if (i3 < iteminfo4.position && l2 > 0) goto _L14; else goto _L13
_L13:
        if (i3 > iteminfo4.position)
        {
            break MISSING_BLOCK_LABEL_470;
        }
        f5 -= f + iteminfo4.widthFactor;
        iteminfo4.offset = f5;
        i3--;
          goto _L15
_L14:
        l2--;
        iteminfo4 = (ItemInfo)mItems.get(l2);
          goto _L16
        f5 -= f + mAdapter.getPageWidth(i3);
        i3--;
          goto _L13
_L6:
        if (j1 < 0)
        {
            f4 = f + (iteminfo.offset + iteminfo.widthFactor);
            l1 = 1 + iteminfo.position;
            i2 = i + 1;
            break MISSING_BLOCK_LABEL_203;
        }
        iteminfo2 = (ItemInfo)mItems.get(j1);
_L17:
label0:
        {
            if (i1 > iteminfo2.position)
            {
                break label0;
            }
            f1 -= f + iteminfo2.widthFactor;
            iteminfo2.offset = f1;
            if (iteminfo2.position == 0)
            {
                mFirstOffset = f1;
            }
            j1--;
            i1--;
        }
          goto _L6
        WazePagerAdapter wazepageradapter = mAdapter;
        int k1 = i1 - 1;
        f1 -= f + wazepageradapter.getPageWidth(i1);
        i1 = k1;
          goto _L17
_L19:
        ItemInfo iteminfo3;
        ItemInfo iteminfo2;
        if (i2 >= l)
        {
            mNeedCalculatePageOffsets = false;
            return;
        }
        iteminfo3 = (ItemInfo)mItems.get(i2);
_L20:
label1:
        {
            if (l1 < iteminfo3.position)
            {
                break label1;
            }
            if (iteminfo3.position == j - 1)
            {
                mLastOffset = (f4 + iteminfo3.widthFactor) - 1.0F;
            }
            iteminfo3.offset = f4;
            f4 += f + iteminfo3.widthFactor;
            i2++;
            l1++;
        }
        if (true) goto _L19; else goto _L18
_L18:
        WazePagerAdapter wazepageradapter1 = mAdapter;
        int j2 = l1 + 1;
        f4 += f + wazepageradapter1.getPageWidth(l1);
        l1 = j2;
          goto _L20
    }

    private void completeScroll(boolean flag)
    {
        boolean flag1;
        int i;
        if (mScrollState == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            setScrollingCacheEnabled(false);
            mScroller.abortAnimation();
            int j = getScrollX();
            int k = getScrollY();
            int l = mScroller.getCurrX();
            int i1 = mScroller.getCurrY();
            if (j != l || k != i1)
            {
                scrollTo(l, i1);
            }
        }
        mPopulatePending = false;
        i = 0;
        do
        {
            if (i >= mItems.size())
            {
                if (flag1)
                {
                    if (!flag)
                    {
                        break;
                    }
                    ViewCompat.postOnAnimation(this, mEndScrollRunnable);
                }
                return;
            }
            ItemInfo iteminfo = (ItemInfo)mItems.get(i);
            if (iteminfo.scrolling)
            {
                flag1 = true;
                iteminfo.scrolling = false;
            }
            i++;
        } while (true);
        mEndScrollRunnable.run();
    }

    private int determineTargetPage(int i, float f, int j, int k)
    {
        int l;
        if (Math.abs(k) > mFlingDistance && Math.abs(j) > mMinimumVelocity)
        {
            if (j > 0)
            {
                l = i;
            } else
            {
                l = i + 1;
            }
        } else
        {
            float f1;
            if (i >= mCurItem)
            {
                f1 = 0.4F;
            } else
            {
                f1 = 0.6F;
            }
            l = (int)(f1 + (f + (float)i));
        }
        if (mItems.size() > 0)
        {
            ItemInfo iteminfo = (ItemInfo)mItems.get(0);
            ItemInfo iteminfo1 = (ItemInfo)mItems.get(-1 + mItems.size());
            l = Math.max(iteminfo.position, Math.min(l, iteminfo1.position));
        }
        return l;
    }

    private void enableLayers(boolean flag)
    {
        int i = getChildCount();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            byte byte0;
            if (flag)
            {
                byte0 = 2;
            } else
            {
                byte0 = 0;
            }
            ViewCompat.setLayerType(getChildAt(j), byte0, null);
            j++;
        } while (true);
    }

    private void endDrag()
    {
        mIsBeingDragged = false;
        mIsUnableToDrag = false;
        if (mVelocityTracker != null)
        {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
        }
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view)
    {
        if (rect == null)
        {
            rect = new Rect();
        }
        if (view == null)
        {
            rect.set(0, 0, 0, 0);
        } else
        {
            rect.left = view.getLeft();
            rect.right = view.getRight();
            rect.top = view.getTop();
            rect.bottom = view.getBottom();
            ViewParent viewparent = view.getParent();
            while ((viewparent instanceof ViewGroup) && viewparent != this) 
            {
                ViewGroup viewgroup = (ViewGroup)viewparent;
                rect.left = rect.left + viewgroup.getLeft();
                rect.right = rect.right + viewgroup.getRight();
                rect.top = rect.top + viewgroup.getTop();
                rect.bottom = rect.bottom + viewgroup.getBottom();
                viewparent = viewgroup.getParent();
            }
        }
        return rect;
    }

    private int getClientWidth()
    {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private ItemInfo infoForCurrentScrollPosition()
    {
        float f;
        float f1;
        int j;
        float f2;
        float f3;
        boolean flag;
        ItemInfo iteminfo;
        int k;
        int i = getClientWidth();
        if (i > 0)
        {
            f = (float)getScrollX() / (float)i;
        } else
        {
            f = 0.0F;
        }
        f1 = 0.0F;
        if (i > 0)
        {
            f1 = (float)mPageMargin / (float)i;
        }
        j = -1;
        f2 = 0.0F;
        f3 = 0.0F;
        flag = true;
        iteminfo = null;
        k = 0;
_L5:
        if (k < mItems.size()) goto _L2; else goto _L1
_L1:
        return iteminfo;
_L2:
        ItemInfo iteminfo1;
        float f4;
        float f5;
        iteminfo1 = (ItemInfo)mItems.get(k);
        if (!flag && iteminfo1.position != j + 1)
        {
            iteminfo1 = mTempItem;
            iteminfo1.offset = f1 + (f2 + f3);
            iteminfo1.position = j + 1;
            iteminfo1.widthFactor = mAdapter.getPageWidth(iteminfo1.position);
            k--;
        }
        f4 = iteminfo1.offset;
        f5 = f1 + (f4 + iteminfo1.widthFactor);
        if (!flag && f < f4) goto _L1; else goto _L3
_L3:
        if (f < f5 || k == -1 + mItems.size())
        {
            return iteminfo1;
        }
        j = iteminfo1.position;
        f2 = f4;
        f3 = iteminfo1.widthFactor;
        iteminfo = iteminfo1;
        k++;
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean isGutterDrag(float f, float f1)
    {
        return f < (float)mGutterSize && f1 > 0.0F || f > (float)(getWidth() - mGutterSize) && f1 < 0.0F;
    }

    private void onSecondaryPointerUp(MotionEvent motionevent)
    {
        int i = MotionEventCompat.getActionIndex(motionevent);
        if (MotionEventCompat.getPointerId(motionevent, i) == mActivePointerId)
        {
            int j;
            if (i == 0)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            mLastMotionX = MotionEventCompat.getX(motionevent, j);
            mActivePointerId = MotionEventCompat.getPointerId(motionevent, j);
            if (mVelocityTracker != null)
            {
                mVelocityTracker.clear();
            }
        }
    }

    private boolean pageScrolled(int i)
    {
        boolean flag;
        if (mItems.size() == 0)
        {
            mCalledSuper = false;
            onPageScrolled(0, 0.0F, 0);
            boolean flag1 = mCalledSuper;
            flag = false;
            if (!flag1)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        } else
        {
            ItemInfo iteminfo = infoForCurrentScrollPosition();
            int j = getClientWidth();
            int k = j + mPageMargin;
            float f = (float)mPageMargin / (float)j;
            int l = iteminfo.position;
            float f1 = ((float)i / (float)j - iteminfo.offset) / (f + iteminfo.widthFactor);
            int i1 = (int)(f1 * (float)k);
            mCalledSuper = false;
            onPageScrolled(l, f1, i1);
            if (!mCalledSuper)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            flag = true;
        }
        return flag;
    }

    private boolean performDrag(float f)
    {
        float f2;
        int i;
        float f3;
        float f4;
        boolean flag;
        boolean flag1;
        float f1 = mLastMotionX - f;
        mLastMotionX = f;
        f2 = f1 + (float)getScrollX();
        i = getClientWidth();
        f3 = (float)i * mFirstOffset;
        f4 = (float)i * mLastOffset;
        flag = true;
        flag1 = true;
        ItemInfo iteminfo = (ItemInfo)mItems.get(0);
        ItemInfo iteminfo1 = (ItemInfo)mItems.get(-1 + mItems.size());
        if (iteminfo.position != 0)
        {
            flag = false;
            f3 = iteminfo.offset * (float)i;
        }
        if (iteminfo1.position != -1 + mAdapter.getCount())
        {
            flag1 = false;
            f4 = iteminfo1.offset * (float)i;
        }
        if (f2 >= f3) goto _L2; else goto _L1
_L1:
        boolean flag2;
        flag2 = false;
        if (flag)
        {
            float f5 = f3 - f2;
            flag2 = mLeftEdge.onPull(Math.abs(f5) / (float)i);
        }
        f2 = f3;
_L4:
        mLastMotionX = mLastMotionX + (f2 - (float)(int)f2);
        scrollTo((int)f2, getScrollY());
        pageScrolled((int)f2);
        return flag2;
_L2:
        int j = f2 != f4;
        flag2 = false;
        if (j > 0)
        {
            flag2 = false;
            if (flag1)
            {
                float f6 = f2 - f4;
                flag2 = mRightEdge.onPull(Math.abs(f6) / (float)i);
            }
            f2 = f4;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void recomputeScrollPosition(int i, int j, int k, int l)
    {
        if (j > 0 && !mItems.isEmpty())
        {
            int j1 = k + (i - getPaddingLeft() - getPaddingRight());
            int k1 = l + (j - getPaddingLeft() - getPaddingRight());
            int l1 = (int)(((float)getScrollX() / (float)k1) * (float)j1);
            scrollTo(l1, getScrollY());
            if (!mScroller.isFinished())
            {
                int i2 = mScroller.getDuration() - mScroller.timePassed();
                ItemInfo iteminfo1 = infoForPosition(mCurItem);
                mScroller.startScroll(l1, 0, (int)(iteminfo1.offset * (float)i), 0, i2);
            }
        } else
        {
            ItemInfo iteminfo = infoForPosition(mCurItem);
            float f;
            int i1;
            if (iteminfo != null)
            {
                f = Math.min(iteminfo.offset, mLastOffset);
            } else
            {
                f = 0.0F;
            }
            i1 = (int)(f * (float)(i - getPaddingLeft() - getPaddingRight()));
            if (i1 != getScrollX())
            {
                completeScroll(false);
                scrollTo(i1, getScrollY());
                return;
            }
        }
    }

    private void removeNonDecorViews()
    {
        int i = 0;
        do
        {
            if (i >= getChildCount())
            {
                return;
            }
            if (!((LayoutParams)getChildAt(i).getLayoutParams()).isDecor)
            {
                removeViewAt(i);
                i--;
            }
            i++;
        } while (true);
    }

    private void requestParentDisallowInterceptTouchEvent(boolean flag)
    {
        ViewParent viewparent = getParent();
        if (viewparent != null)
        {
            viewparent.requestDisallowInterceptTouchEvent(flag);
        }
    }

    private void scrollToItem(int i, boolean flag, int j, boolean flag1)
    {
        ItemInfo iteminfo = infoForPosition(i);
        int k = 0;
        if (iteminfo != null)
        {
            k = (int)((float)getClientWidth() * Math.max(mFirstOffset, Math.min(iteminfo.offset, mLastOffset)));
        }
        if (flag)
        {
            smoothScrollTo(k, 0, j);
            if (flag1 && mOnPageChangeListener != null)
            {
                mOnPageChangeListener.onPageSelected(i);
            }
            if (flag1 && mInternalPageChangeListener != null)
            {
                mInternalPageChangeListener.onPageSelected(i);
            }
            return;
        }
        if (flag1 && mOnPageChangeListener != null)
        {
            mOnPageChangeListener.onPageSelected(i);
        }
        if (flag1 && mInternalPageChangeListener != null)
        {
            mInternalPageChangeListener.onPageSelected(i);
        }
        completeScroll(false);
        scrollTo(k, 0);
        pageScrolled(k);
    }

    private void setScrollState(int i)
    {
        if (mScrollState != i)
        {
            mScrollState = i;
            if (mPageTransformer != null)
            {
                boolean flag;
                if (i != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                enableLayers(flag);
            }
            if (mOnPageChangeListener != null)
            {
                mOnPageChangeListener.onPageScrollStateChanged(i);
                return;
            }
        }
    }

    private void setScrollingCacheEnabled(boolean flag)
    {
        if (mScrollingCacheEnabled != flag)
        {
            mScrollingCacheEnabled = flag;
        }
    }

    private void sortChildDrawingOrder()
    {
        if (mDrawingOrder == 0) goto _L2; else goto _L1
_L1:
        int j;
        int i;
        if (mDrawingOrderedChildren == null)
        {
            mDrawingOrderedChildren = new ArrayList();
        } else
        {
            mDrawingOrderedChildren.clear();
        }
        i = getChildCount();
        j = 0;
_L6:
        if (j < i) goto _L4; else goto _L3
_L3:
        Collections.sort(mDrawingOrderedChildren, sPositionComparator);
_L2:
        return;
_L4:
        View view = getChildAt(j);
        mDrawingOrderedChildren.add(view);
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void addFocusables(ArrayList arraylist, int i, int j)
    {
        int k;
        int l;
        k = arraylist.size();
        l = getDescendantFocusability();
        if (l == 0x60000) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L4:
        while (i1 < getChildCount()) 
        {
            View view = getChildAt(i1);
            if (view.getVisibility() == 0)
            {
                ItemInfo iteminfo = infoForChild(view);
                if (iteminfo != null && iteminfo.position == mCurItem)
                {
                    view.addFocusables(arraylist, i, j);
                }
            }
            i1++;
        }
_L2:
        if (l == 0x40000 && k != arraylist.size() || !isFocusable() || (j & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode() || arraylist == null)
        {
            return;
        }
        arraylist.add(this);
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    ItemInfo addNewItem(int i, int j)
    {
        ItemInfo iteminfo = new ItemInfo();
        iteminfo.position = i;
        iteminfo.object = mAdapter.instantiateItem(this, i);
        iteminfo.widthFactor = mAdapter.getPageWidth(i);
        if (j < 0 || j >= mItems.size())
        {
            mItems.add(iteminfo);
            return iteminfo;
        } else
        {
            mItems.add(j, iteminfo);
            return iteminfo;
        }
    }

    public void addTouchables(ArrayList arraylist)
    {
        int i = 0;
        do
        {
            if (i >= getChildCount())
            {
                return;
            }
            View view = getChildAt(i);
            if (view.getVisibility() == 0)
            {
                ItemInfo iteminfo = infoForChild(view);
                if (iteminfo != null && iteminfo.position == mCurItem)
                {
                    view.addTouchables(arraylist);
                }
            }
            i++;
        } while (true);
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (!checkLayoutParams(layoutparams))
        {
            layoutparams = generateLayoutParams(layoutparams);
        }
        LayoutParams layoutparams1 = (LayoutParams)layoutparams;
        layoutparams1.isDecor = layoutparams1.isDecor | (view instanceof Decor);
        if (mInLayout)
        {
            if (layoutparams1 != null && layoutparams1.isDecor)
            {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            } else
            {
                layoutparams1.needsMeasure = true;
                addViewInLayout(view, i, layoutparams);
                return;
            }
        } else
        {
            super.addView(view, i, layoutparams);
            return;
        }
    }

    public boolean arrowScroll(int i)
    {
        View view = findFocus();
        if (view != this) goto _L2; else goto _L1
_L1:
        view = null;
_L4:
        boolean flag2;
        View view1 = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (view1 != null && view1 != view)
        {
            if (i == 17)
            {
                int l = getChildRectInPagerCoordinates(mTempRect, view1).left;
                int i1 = getChildRectInPagerCoordinates(mTempRect, view).left;
                ViewParent viewparent;
                boolean flag;
                boolean flag1;
                StringBuilder stringbuilder;
                ViewParent viewparent1;
                if (view != null && l >= i1)
                {
                    flag2 = pageLeft();
                } else
                {
                    flag2 = view1.requestFocus();
                }
            } else
            {
                flag2 = false;
                if (i == 66)
                {
                    int j = getChildRectInPagerCoordinates(mTempRect, view1).left;
                    int k = getChildRectInPagerCoordinates(mTempRect, view).left;
                    if (view != null && j <= k)
                    {
                        flag2 = pageRight();
                    } else
                    {
                        flag2 = view1.requestFocus();
                    }
                }
            }
        } else
        {
label0:
            {
                if (i != 17 && i != 1)
                {
                    break label0;
                }
                flag2 = pageLeft();
            }
        }
_L10:
        if (flag2)
        {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return flag2;
_L2:
        if (view == null) goto _L4; else goto _L3
_L3:
        viewparent = view.getParent();
_L6:
        flag = viewparent instanceof ViewGroup;
        flag1 = false;
        if (flag)
        {
label1:
            {
                if (viewparent != this)
                {
                    break label1;
                }
                flag1 = true;
            }
        }
        if (flag1) goto _L4; else goto _L5
_L5:
        stringbuilder = new StringBuilder();
        stringbuilder.append(view.getClass().getSimpleName());
        viewparent1 = view.getParent();
_L7:
        if (viewparent1 instanceof ViewGroup)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        Log.e("ViewPager", (new StringBuilder("arrowScroll tried to find focus based on non-child current focused view ")).append(stringbuilder.toString()).toString());
        view = null;
          goto _L4
        viewparent = viewparent.getParent();
          goto _L6
        stringbuilder.append(" => ").append(viewparent1.getClass().getSimpleName());
        viewparent1 = viewparent1.getParent();
          goto _L7
        if (i == 66) goto _L9; else goto _L8
_L8:
        flag2 = false;
        if (i != 2) goto _L10; else goto _L9
_L9:
        flag2 = pageRight();
          goto _L10
    }

    public boolean beginFakeDrag()
    {
        if (mIsBeingDragged)
        {
            return false;
        }
        mFakeDragging = true;
        setScrollState(1);
        mLastMotionX = 0.0F;
        mInitialMotionX = 0.0F;
        long l;
        MotionEvent motionevent;
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        } else
        {
            mVelocityTracker.clear();
        }
        l = SystemClock.uptimeMillis();
        motionevent = MotionEvent.obtain(l, l, 0, 0.0F, 0.0F, 0);
        mVelocityTracker.addMovement(motionevent);
        motionevent.recycle();
        mFakeDragBeginTime = l;
        return true;
    }

    protected boolean canScroll(View view, boolean flag, int i, int j, int k)
    {
        if (!(view instanceof ViewGroup)) goto _L2; else goto _L1
_L1:
        ViewGroup viewgroup;
        int l;
        int i1;
        int j1;
        viewgroup = (ViewGroup)view;
        l = view.getScrollX();
        i1 = view.getScrollY();
        j1 = -1 + viewgroup.getChildCount();
_L5:
        if (j1 >= 0) goto _L3; else goto _L2
_L2:
        View view1;
        return flag && ViewCompat.canScrollHorizontally(view, -i);
_L3:
        view1 = viewgroup.getChildAt(j1);
        if (j + l >= view1.getLeft() && j + l < view1.getRight() && k + i1 >= view1.getTop() && k + i1 < view1.getBottom() && canScroll(view1, true, i, (j + l) - view1.getLeft(), (k + i1) - view1.getTop()))
        {
            return true;
        }
        j1--;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean canScrollHorizontally(int i)
    {
        if (mAdapter != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int j;
        int k;
        j = getClientWidth();
        k = getScrollX();
        if (i >= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (k <= (int)((float)j * mFirstOffset)) goto _L1; else goto _L3
_L3:
        return true;
        if (i <= 0 || k >= (int)((float)j * mLastOffset)) goto _L1; else goto _L4
_L4:
        return true;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && super.checkLayoutParams(layoutparams);
    }

    public void computeScroll()
    {
        if (!mScroller.isFinished() && mScroller.computeScrollOffset())
        {
            int i = getScrollX();
            int j = getScrollY();
            int k = mScroller.getCurrX();
            int l = mScroller.getCurrY();
            if (i != k || j != l)
            {
                scrollTo(k, l);
                if (!pageScrolled(k))
                {
                    mScroller.abortAnimation();
                    scrollTo(0, l);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        } else
        {
            completeScroll(true);
            return;
        }
    }

    void dataSetChanged()
    {
        int i;
        boolean flag;
        int j;
        boolean flag1;
        int k;
        int j1;
        i = mAdapter.getCount();
        mExpectedAdapterCount = i;
        int i1;
        if (mItems.size() < 1 + 2 * mOffscreenPageLimit && mItems.size() < i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = mCurItem;
        flag1 = false;
        k = 0;
_L5:
        if (k < mItems.size()) goto _L2; else goto _L1
_L1:
        if (flag1)
        {
            mAdapter.finishUpdate(this);
        }
        Collections.sort(mItems, COMPARATOR);
        if (!flag) goto _L4; else goto _L3
_L3:
        i1 = getChildCount();
        j1 = 0;
_L6:
        if (j1 < i1)
        {
            break MISSING_BLOCK_LABEL_292;
        }
        setCurrentItemInternal(j, false, true);
        requestLayout();
_L4:
        return;
_L2:
        ItemInfo iteminfo = (ItemInfo)mItems.get(k);
        int l = mAdapter.getItemPosition(iteminfo.object);
        if (l != -1)
        {
            if (l == -2)
            {
                mItems.remove(k);
                k--;
                if (!flag1)
                {
                    mAdapter.startUpdate(this);
                    flag1 = true;
                }
                mAdapter.destroyItem(this, iteminfo.position, iteminfo.object);
                flag = true;
                if (mCurItem == iteminfo.position)
                {
                    j = Math.max(0, Math.min(mCurItem, i - 1));
                    flag = true;
                }
            } else
            if (iteminfo.position != l)
            {
                if (iteminfo.position == mCurItem)
                {
                    j = l;
                }
                iteminfo.position = l;
                flag = true;
            }
        }
        k++;
          goto _L5
        LayoutParams layoutparams = (LayoutParams)getChildAt(j1).getLayoutParams();
        if (!layoutparams.isDecor)
        {
            layoutparams.widthFactor = 0.0F;
        }
        j1++;
          goto _L6
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        return super.dispatchKeyEvent(keyevent) || executeKeyEvent(keyevent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        if (accessibilityevent.getEventType() == 4096)
        {
            return super.dispatchPopulateAccessibilityEvent(accessibilityevent);
        }
        int i = getChildCount();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return false;
            }
            View view = getChildAt(j);
            if (view.getVisibility() == 0)
            {
                ItemInfo iteminfo = infoForChild(view);
                if (iteminfo != null && iteminfo.position == mCurItem && view.dispatchPopulateAccessibilityEvent(accessibilityevent))
                {
                    return true;
                }
            }
            j++;
        } while (true);
    }

    float distanceInfluenceForSnapDuration(float f)
    {
        return (float)Math.sin((float)(0.4712389167638204D * (double)(f - 0.5F)));
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        int i = ViewCompat.getOverScrollMode(this);
        boolean flag1;
        if (i == 0 || i == 1 && mAdapter != null && mAdapter.getCount() > 1)
        {
            boolean flag = mLeftEdge.isFinished();
            flag1 = false;
            if (!flag)
            {
                int i1 = canvas.save();
                int j1 = getHeight() - getPaddingTop() - getPaddingBottom();
                int k1 = getWidth();
                canvas.rotate(270F);
                canvas.translate(-j1 + getPaddingTop(), mFirstOffset * (float)k1);
                mLeftEdge.setSize(j1, k1);
                flag1 = false | mLeftEdge.draw(canvas);
                canvas.restoreToCount(i1);
            }
            if (!mRightEdge.isFinished())
            {
                int j = canvas.save();
                int k = getWidth();
                int l = getHeight() - getPaddingTop() - getPaddingBottom();
                canvas.rotate(90F);
                canvas.translate(-getPaddingTop(), -(1.0F + mLastOffset) * (float)k);
                mRightEdge.setSize(l, k);
                flag1 |= mRightEdge.draw(canvas);
                canvas.restoreToCount(j);
            }
        } else
        {
            mLeftEdge.finish();
            mRightEdge.finish();
            flag1 = false;
        }
        if (flag1)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = mMarginDrawable;
        if (drawable != null && drawable.isStateful())
        {
            drawable.setState(getDrawableState());
        }
    }

    public void endFakeDrag()
    {
        if (!mFakeDragging)
        {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        } else
        {
            VelocityTracker velocitytracker = mVelocityTracker;
            velocitytracker.computeCurrentVelocity(1000, mMaximumVelocity);
            int i = (int)VelocityTrackerCompat.getXVelocity(velocitytracker, mActivePointerId);
            mPopulatePending = true;
            int j = getClientWidth();
            int k = getScrollX();
            ItemInfo iteminfo = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(iteminfo.position, ((float)k / (float)j - iteminfo.offset) / iteminfo.widthFactor, i, (int)(mLastMotionX - mInitialMotionX)), true, true, i);
            endDrag();
            mFakeDragging = false;
            return;
        }
    }

    public boolean executeKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        keyevent.getKeyCode();
        JVM INSTR lookupswitch 3: default 44
    //                   21: 46
    //                   22: 53
    //                   61: 60;
           goto _L2 _L3 _L4 _L5
_L2:
        return false;
_L3:
        return arrowScroll(17);
_L4:
        return arrowScroll(66);
_L5:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            if (KeyEventCompat.hasNoModifiers(keyevent))
            {
                return arrowScroll(2);
            }
            if (KeyEventCompat.hasModifiers(keyevent, 1))
            {
                return arrowScroll(1);
            }
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public void fakeDragBy(float f)
    {
        float f1;
        float f2;
        float f3;
        if (!mFakeDragging)
        {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        mLastMotionX = f + mLastMotionX;
        f1 = (float)getScrollX() - f;
        int i = getClientWidth();
        f2 = (float)i * mFirstOffset;
        f3 = (float)i * mLastOffset;
        ItemInfo iteminfo = (ItemInfo)mItems.get(0);
        ItemInfo iteminfo1 = (ItemInfo)mItems.get(-1 + mItems.size());
        if (iteminfo.position != 0)
        {
            f2 = iteminfo.offset * (float)i;
        }
        if (iteminfo1.position != -1 + mAdapter.getCount())
        {
            f3 = iteminfo1.offset * (float)i;
        }
        if (f1 >= f2) goto _L2; else goto _L1
_L1:
        f1 = f2;
_L4:
        mLastMotionX = mLastMotionX + (f1 - (float)(int)f1);
        scrollTo((int)f1, getScrollY());
        pageScrolled((int)f1);
        long l = SystemClock.uptimeMillis();
        MotionEvent motionevent = MotionEvent.obtain(mFakeDragBeginTime, l, 2, mLastMotionX, 0.0F, 0);
        mVelocityTracker.addMovement(motionevent);
        motionevent.recycle();
        return;
_L2:
        if (f1 > f3)
        {
            f1 = f3;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateDefaultLayoutParams();
    }

    public WazePagerAdapter getAdapter()
    {
        return mAdapter;
    }

    protected int getChildDrawingOrder(int i, int j)
    {
        int k;
        if (mDrawingOrder == 2)
        {
            k = i - 1 - j;
        } else
        {
            k = j;
        }
        return ((LayoutParams)((View)mDrawingOrderedChildren.get(k)).getLayoutParams()).childIndex;
    }

    public int getCurrentItem()
    {
        return mCurItem;
    }

    public int getOffscreenPageLimit()
    {
        return mOffscreenPageLimit;
    }

    public int getPageMargin()
    {
        return mPageMargin;
    }

    ItemInfo infoForAnyChild(View view)
    {
        do
        {
            ViewParent viewparent = view.getParent();
            if (viewparent == this)
            {
                return infoForChild(view);
            }
            if (viewparent == null || !(viewparent instanceof View))
            {
                return null;
            }
            view = (View)viewparent;
        } while (true);
    }

    ItemInfo infoForChild(View view)
    {
        int i = 0;
_L6:
        if (i < mItems.size()) goto _L2; else goto _L1
_L1:
        ItemInfo iteminfo = null;
_L4:
        return iteminfo;
_L2:
        iteminfo = (ItemInfo)mItems.get(i);
        if (mAdapter.isViewFromObject(view, iteminfo.object)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    ItemInfo infoForPosition(int i)
    {
        int j = 0;
_L6:
        if (j < mItems.size()) goto _L2; else goto _L1
_L1:
        ItemInfo iteminfo = null;
_L4:
        return iteminfo;
_L2:
        iteminfo = (ItemInfo)mItems.get(j);
        if (iteminfo.position == i) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    void initViewPager()
    {
        setWillNotDraw(false);
        setDescendantFocusability(0x40000);
        setFocusable(true);
        Context context = getContext();
        mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(viewconfiguration);
        mMinimumVelocity = (int)(400F * f);
        mMaximumVelocity = viewconfiguration.getScaledMaximumFlingVelocity();
        mLeftEdge = new EdgeEffectCompat(context);
        mRightEdge = new EdgeEffectCompat(context);
        mFlingDistance = (int)(25F * f);
        mCloseEnough = (int)(2.0F * f);
        mDefaultGutterSize = (int)(16F * f);
        ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate());
        if (ViewCompat.getImportantForAccessibility(this) == 0)
        {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    public boolean isFakeDragging()
    {
        return mFakeDragging;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mFirstLayout = true;
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks(mEndScrollRunnable);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (mPageMargin <= 0 || mMarginDrawable == null || mItems.size() <= 0 || mAdapter == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        float f;
        int k;
        ItemInfo iteminfo;
        float f1;
        int l;
        int j1;
        int k1;
        i = getScrollX();
        j = getWidth();
        f = (float)mPageMargin / (float)j;
        k = 0;
        iteminfo = (ItemInfo)mItems.get(0);
        f1 = iteminfo.offset;
        l = mItems.size();
        int i1 = iteminfo.position;
        j1 = ((ItemInfo)mItems.get(l - 1)).position;
        k1 = i1;
_L6:
        if (k1 < j1) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ArrayList arraylist;
        for (; k1 > iteminfo.position && k < l; iteminfo = (ItemInfo)arraylist.get(k))
        {
            arraylist = mItems;
            k++;
        }

        float f3;
        if (k1 == iteminfo.position)
        {
            f3 = (iteminfo.offset + iteminfo.widthFactor) * (float)j;
            f1 = f + (iteminfo.offset + iteminfo.widthFactor);
        } else
        {
            float f2 = mAdapter.getPageWidth(k1);
            f3 = (f1 + f2) * (float)j;
            f1 += f2 + f;
        }
        if (f3 + (float)mPageMargin > (float)i)
        {
            mMarginDrawable.setBounds((int)f3, mTopPageBounds, (int)(0.5F + (f3 + (float)mPageMargin)), mBottomPageBounds);
            mMarginDrawable.draw(canvas);
        }
        if (f3 > (float)(i + j)) goto _L2; else goto _L4
_L4:
        k1++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i;
        i = 0xff & motionevent.getAction();
        if (i == 3 || i == 1)
        {
            mIsBeingDragged = false;
            mIsUnableToDrag = false;
            mActivePointerId = -1;
            if (mVelocityTracker != null)
            {
                mVelocityTracker.recycle();
                mVelocityTracker = null;
            }
            return false;
        }
        if (i != 0)
        {
            if (mIsBeingDragged)
            {
                return true;
            }
            if (mIsUnableToDrag)
            {
                return false;
            }
        }
        i;
        JVM INSTR lookupswitch 3: default 112
    //                   0: 391
    //                   2: 139
    //                   6: 526;
           goto _L1 _L2 _L3 _L4
_L1:
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        return mIsBeingDragged;
_L3:
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int j = mActivePointerId;
        if (j == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        int k = MotionEventCompat.findPointerIndex(motionevent, j);
        f2 = MotionEventCompat.getX(motionevent, k);
        f3 = f2 - mLastMotionX;
        f4 = Math.abs(f3);
        f5 = MotionEventCompat.getY(motionevent, k);
        f6 = Math.abs(f5 - mInitialMotionY);
        if (f3 != 0.0F && !isGutterDrag(mLastMotionX, f3) && canScroll(this, false, (int)f3, (int)f2, (int)f5))
        {
            mLastMotionX = f2;
            mLastMotionY = f5;
            mIsUnableToDrag = true;
            return false;
        }
        if (f4 <= (float)mTouchSlop || 0.5F * f4 <= f6) goto _L6; else goto _L5
_L5:
        mIsBeingDragged = true;
        requestParentDisallowInterceptTouchEvent(true);
        setScrollState(1);
        float f7;
        if (f3 > 0.0F)
        {
            f7 = mInitialMotionX + (float)mTouchSlop;
        } else
        {
            f7 = mInitialMotionX - (float)mTouchSlop;
        }
        mLastMotionX = f7;
        mLastMotionY = f5;
        setScrollingCacheEnabled(true);
_L7:
        if (mIsBeingDragged && performDrag(f2))
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (f6 > (float)mTouchSlop)
        {
            mIsUnableToDrag = true;
        }
        if (true) goto _L7; else goto _L2
_L2:
        float f = motionevent.getX();
        mInitialMotionX = f;
        mLastMotionX = f;
        float f1 = motionevent.getY();
        mInitialMotionY = f1;
        mLastMotionY = f1;
        mActivePointerId = MotionEventCompat.getPointerId(motionevent, 0);
        mIsUnableToDrag = false;
        mScroller.computeScrollOffset();
        if (mScrollState == 2 && Math.abs(mScroller.getFinalX() - mScroller.getCurrX()) > mCloseEnough)
        {
            mScroller.abortAnimation();
            mPopulatePending = false;
            populate();
            mIsBeingDragged = true;
            requestParentDisallowInterceptTouchEvent(true);
            setScrollState(1);
        } else
        {
            completeScroll(false);
            mIsBeingDragged = false;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        onSecondaryPointerUp(motionevent);
        if (true) goto _L1; else goto _L8
_L8:
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        i1 = getChildCount();
        j1 = k - i;
        k1 = l - j;
        l1 = getPaddingLeft();
        i2 = getPaddingTop();
        j2 = getPaddingRight();
        k2 = getPaddingBottom();
        l2 = getScrollX();
        i3 = 0;
        j3 = 0;
_L15:
        int l4;
        int i5;
        if (j3 >= i1)
        {
            l4 = j1 - l1 - j2;
            i5 = 0;
            break MISSING_BLOCK_LABEL_74;
        }
        view = getChildAt(j3);
        if (view.getVisibility() == 8) goto _L2; else goto _L1
_L1:
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.isDecor) goto _L2; else goto _L3
_L3:
        k3 = 7 & layoutparams.gravity;
        l3 = 0x70 & layoutparams.gravity;
        k3;
        JVM INSTR tableswitch 1 5: default 220
    //                   1 322
    //                   2 220
    //                   3 305
    //                   4 220
    //                   5 342;
           goto _L4 _L5 _L4 _L6 _L4 _L7
_L4:
        i4 = l1;
_L12:
        l3;
        JVM INSTR lookupswitch 3: default 260
    //                   16: 385
    //                   48: 368
    //                   80: 405;
           goto _L8 _L9 _L10 _L11
_L8:
        j4 = i2;
_L13:
        int k4 = i4 + l2;
        view.layout(k4, j4, k4 + view.getMeasuredWidth(), j4 + view.getMeasuredHeight());
        i3++;
_L2:
        j3++;
        continue; /* Loop/switch isn't completed */
_L6:
        i4 = l1;
        l1 += view.getMeasuredWidth();
          goto _L12
_L5:
        i4 = Math.max((j1 - view.getMeasuredWidth()) / 2, l1);
          goto _L12
_L7:
        i4 = j1 - j2 - view.getMeasuredWidth();
        j2 += view.getMeasuredWidth();
          goto _L12
_L10:
        j4 = i2;
        i2 += view.getMeasuredHeight();
          goto _L13
_L9:
        j4 = Math.max((k1 - view.getMeasuredHeight()) / 2, i2);
          goto _L13
_L11:
        j4 = k1 - k2 - view.getMeasuredHeight();
        k2 += view.getMeasuredHeight();
          goto _L13
        do
        {
            View view;
            LayoutParams layoutparams;
            int k3;
            int l3;
            int i4;
            int j4;
            if (i5 >= i1)
            {
                mTopPageBounds = i2;
                mBottomPageBounds = k1 - k2;
                mDecorChildCount = i3;
                if (mFirstLayout)
                {
                    scrollToItem(mCurItem, false, 0, false);
                }
                mFirstLayout = false;
                return;
            }
            View view1 = getChildAt(i5);
            if (view1.getVisibility() != 8)
            {
                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                if (!layoutparams1.isDecor)
                {
                    ItemInfo iteminfo = infoForChild(view1);
                    if (iteminfo != null)
                    {
                        int j5 = l1 + (int)((float)l4 * iteminfo.offset);
                        int k5 = i2;
                        if (layoutparams1.needsMeasure)
                        {
                            layoutparams1.needsMeasure = false;
                            view1.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((float)l4 * layoutparams1.widthFactor), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(k1 - i2 - k2, 0x40000000));
                        }
                        view1.layout(j5, k5, j5 + view1.getMeasuredWidth(), k5 + view1.getMeasuredHeight());
                    }
                }
            }
            i5++;
        } while (true);
        if (true) goto _L15; else goto _L14
_L14:
    }

    protected void onMeasure(int i, int j)
    {
        int l;
        int i1;
        int j1;
        int k1;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, j));
        int k = getMeasuredWidth();
        mGutterSize = Math.min(k / 10, mDefaultGutterSize);
        l = k - getPaddingLeft() - getPaddingRight();
        i1 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        j1 = getChildCount();
        k1 = 0;
_L3:
        if (k1 < j1) goto _L2; else goto _L1
_L1:
        int j3;
        int k3;
        mChildWidthMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(l, 0x40000000);
        mChildHeightMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
        mInLayout = true;
        populate();
        mInLayout = false;
        j3 = getChildCount();
        k3 = 0;
_L4:
        if (k3 >= j3)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_400;
_L2:
        View view = getChildAt(k1);
        if (view.getVisibility() != 8)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (layoutparams != null && layoutparams.isDecor)
            {
                int l1 = 7 & layoutparams.gravity;
                int i2 = 0x70 & layoutparams.gravity;
                int j2 = 0x80000000;
                int k2 = 0x80000000;
                boolean flag;
                boolean flag1;
                int l2;
                int i3;
                if (i2 != 48 && i2 != 80)
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                if (l1 != 3 && l1 != 5)
                {
                    flag1 = false;
                } else
                {
                    flag1 = true;
                }
                if (flag)
                {
                    j2 = 0x40000000;
                } else
                if (flag1)
                {
                    k2 = 0x40000000;
                }
                l2 = l;
                i3 = i1;
                if (layoutparams.width != -2)
                {
                    j2 = 0x40000000;
                    if (layoutparams.width != -1)
                    {
                        l2 = layoutparams.width;
                    }
                }
                if (layoutparams.height != -2)
                {
                    k2 = 0x40000000;
                    if (layoutparams.height != -1)
                    {
                        i3 = layoutparams.height;
                    }
                }
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l2, j2), android.view.View.MeasureSpec.makeMeasureSpec(i3, k2));
                if (flag)
                {
                    i1 -= view.getMeasuredHeight();
                } else
                if (flag1)
                {
                    l -= view.getMeasuredWidth();
                }
            }
        }
        k1++;
          goto _L3
        View view1 = getChildAt(k3);
        if (view1.getVisibility() != 8)
        {
            LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
            if (layoutparams1 == null || !layoutparams1.isDecor)
            {
                view1.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((float)l * layoutparams1.widthFactor), 0x40000000), mChildHeightMeasureSpec);
            }
        }
        k3++;
          goto _L4
    }

    protected void onPageScrolled(int i, float f, int j)
    {
        if (mDecorChildCount <= 0) goto _L2; else goto _L1
_L1:
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        j1 = getScrollX();
        k1 = getPaddingLeft();
        l1 = getPaddingRight();
        i2 = getWidth();
        j2 = getChildCount();
        k2 = 0;
_L8:
        if (k2 < j2) goto _L3; else goto _L2
_L2:
        if (mOnPageChangeListener != null)
        {
            mOnPageChangeListener.onPageScrolled(i, f, j);
        }
        if (mInternalPageChangeListener != null)
        {
            mInternalPageChangeListener.onPageScrolled(i, f, j);
        }
        if (mPageTransformer == null) goto _L5; else goto _L4
_L4:
        int k;
        int l;
        int i1;
        k = getScrollX();
        l = getChildCount();
        i1 = 0;
_L14:
        if (i1 < l)
        {
            break MISSING_BLOCK_LABEL_291;
        }
_L5:
        mCalledSuper = true;
        return;
_L3:
        View view1;
        LayoutParams layoutparams;
        view1 = getChildAt(k2);
        layoutparams = (LayoutParams)view1.getLayoutParams();
        if (layoutparams.isDecor) goto _L7; else goto _L6
_L6:
        k2++;
          goto _L8
_L7:
        7 & layoutparams.gravity;
        JVM INSTR tableswitch 1 5: default 196
    //                   1 245
    //                   2 196
    //                   3 228
    //                   4 196
    //                   5 265;
           goto _L9 _L10 _L9 _L11 _L9 _L12
_L12:
        break MISSING_BLOCK_LABEL_265;
_L9:
        int l2 = k1;
_L13:
        int i3 = (l2 + j1) - view1.getLeft();
        if (i3 != 0)
        {
            view1.offsetLeftAndRight(i3);
        }
          goto _L6
_L11:
        l2 = k1;
        k1 += view1.getWidth();
          goto _L13
_L10:
        l2 = Math.max((i2 - view1.getMeasuredWidth()) / 2, k1);
          goto _L13
        l2 = i2 - l1 - view1.getMeasuredWidth();
        l1 += view1.getMeasuredWidth();
          goto _L13
        View view = getChildAt(i1);
        if (!((LayoutParams)view.getLayoutParams()).isDecor)
        {
            float f1 = (float)(view.getLeft() - k) / (float)getClientWidth();
            mPageTransformer.transformPage(view, f1);
        }
        i1++;
          goto _L14
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect)
    {
        int j = getChildCount();
        int k;
        byte byte0;
        int l;
        int i1;
        if ((i & 2) != 0)
        {
            k = 0;
            byte0 = 1;
            l = j;
        } else
        {
            k = j - 1;
            byte0 = -1;
            l = -1;
        }
        i1 = k;
        do
        {
            if (i1 == l)
            {
                return false;
            }
            View view = getChildAt(i1);
            if (view.getVisibility() == 0)
            {
                ItemInfo iteminfo = infoForChild(view);
                if (iteminfo != null && iteminfo.position == mCurItem && view.requestFocus(i, rect))
                {
                    return true;
                }
            }
            i1 += byte0;
        } while (true);
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (mAdapter != null)
        {
            mAdapter.restoreState(savedstate.adapterState, savedstate.loader);
            setCurrentItemInternal(savedstate.position, false, true);
            return;
        } else
        {
            mRestoredCurItem = savedstate.position;
            mRestoredAdapterState = savedstate.adapterState;
            mRestoredClassLoader = savedstate.loader;
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.position = mCurItem;
        if (mAdapter != null)
        {
            savedstate.adapterState = mAdapter.saveState();
        }
        return savedstate;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (i != k)
        {
            recomputeScrollPosition(i, k, mPageMargin, mPageMargin);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        boolean flag;
        if (mFakeDragging)
        {
            return true;
        }
        if (motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0)
        {
            return false;
        }
        if (mAdapter == null || mAdapter.getCount() == 0)
        {
            return false;
        }
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        i = 0xff & motionevent.getAction();
        flag = false;
        i;
        JVM INSTR tableswitch 0 6: default 120
    //                   0 130
    //                   1 397
    //                   2 196
    //                   3 548
    //                   4 120
    //                   5 600
    //                   6 631;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
        if (flag)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
_L2:
        mScroller.abortAnimation();
        mPopulatePending = false;
        populate();
        float f5 = motionevent.getX();
        mInitialMotionX = f5;
        mLastMotionX = f5;
        float f6 = motionevent.getY();
        mInitialMotionY = f6;
        mLastMotionY = f6;
        mActivePointerId = MotionEventCompat.getPointerId(motionevent, 0);
        flag = false;
        continue; /* Loop/switch isn't completed */
_L4:
        if (!mIsBeingDragged)
        {
            int j1 = MotionEventCompat.findPointerIndex(motionevent, mActivePointerId);
            float f = MotionEventCompat.getX(motionevent, j1);
            float f1 = Math.abs(f - mLastMotionX);
            float f2 = MotionEventCompat.getY(motionevent, j1);
            float f3 = Math.abs(f2 - mLastMotionY);
            if (f1 > (float)mTouchSlop && f1 > f3)
            {
                mIsBeingDragged = true;
                requestParentDisallowInterceptTouchEvent(true);
                boolean flag3;
                float f4;
                ViewParent viewparent;
                if (f - mInitialMotionX > 0.0F)
                {
                    f4 = mInitialMotionX + (float)mTouchSlop;
                } else
                {
                    f4 = mInitialMotionX - (float)mTouchSlop;
                }
                mLastMotionX = f4;
                mLastMotionY = f2;
                setScrollState(1);
                setScrollingCacheEnabled(true);
                viewparent = getParent();
                if (viewparent != null)
                {
                    viewparent.requestDisallowInterceptTouchEvent(true);
                }
            }
        }
        flag3 = mIsBeingDragged;
        flag = false;
        if (flag3)
        {
            flag = false | performDrag(MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, mActivePointerId)));
        }
        continue; /* Loop/switch isn't completed */
_L3:
        boolean flag2 = mIsBeingDragged;
        flag = false;
        if (flag2)
        {
            VelocityTracker velocitytracker = mVelocityTracker;
            velocitytracker.computeCurrentVelocity(1000, mMaximumVelocity);
            int k = (int)VelocityTrackerCompat.getXVelocity(velocitytracker, mActivePointerId);
            mPopulatePending = true;
            int l = getClientWidth();
            int i1 = getScrollX();
            ItemInfo iteminfo = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(iteminfo.position, ((float)i1 / (float)l - iteminfo.offset) / iteminfo.widthFactor, k, (int)(MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, mActivePointerId)) - mInitialMotionX)), true, true, k);
            mActivePointerId = -1;
            endDrag();
            flag = mLeftEdge.onRelease() | mRightEdge.onRelease();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        boolean flag1 = mIsBeingDragged;
        flag = false;
        if (flag1)
        {
            scrollToItem(mCurItem, true, 0, false);
            mActivePointerId = -1;
            endDrag();
            flag = mLeftEdge.onRelease() | mRightEdge.onRelease();
        }
        continue; /* Loop/switch isn't completed */
_L6:
        int j = MotionEventCompat.getActionIndex(motionevent);
        mLastMotionX = MotionEventCompat.getX(motionevent, j);
        mActivePointerId = MotionEventCompat.getPointerId(motionevent, j);
        flag = false;
        continue; /* Loop/switch isn't completed */
_L7:
        onSecondaryPointerUp(motionevent);
        mLastMotionX = MotionEventCompat.getX(motionevent, MotionEventCompat.findPointerIndex(motionevent, mActivePointerId));
        flag = false;
        if (true) goto _L1; else goto _L8
_L8:
    }

    boolean pageLeft()
    {
        if (mCurItem > 0)
        {
            setCurrentItem(-1 + mCurItem, true);
            return true;
        } else
        {
            return false;
        }
    }

    boolean pageRight()
    {
        if (mAdapter != null && mCurItem < -1 + mAdapter.getCount())
        {
            setCurrentItem(1 + mCurItem, true);
            return true;
        } else
        {
            return false;
        }
    }

    void populate()
    {
        populate(mCurItem);
    }

    void populate(int i)
    {
        byte byte0;
        ItemInfo iteminfo;
        byte0 = 2;
        int j = mCurItem;
        iteminfo = null;
        if (j != i)
        {
            if (mCurItem < i)
            {
                byte0 = 66;
            } else
            {
                byte0 = 17;
            }
            iteminfo = infoForPosition(mCurItem);
            mCurItem = i;
        }
        if (mAdapter != null) goto _L2; else goto _L1
_L1:
        sortChildDrawingOrder();
_L4:
        return;
_L2:
        if (mPopulatePending)
        {
            sortChildDrawingOrder();
            return;
        }
        if (getWindowToken() == null) goto _L4; else goto _L3
_L3:
        int l;
        int i1;
        int j1;
        mAdapter.startUpdate(this);
        int k = mOffscreenPageLimit;
        l = Math.max(0, mCurItem - k);
        i1 = mAdapter.getCount();
        j1 = Math.min(i1 - 1, k + mCurItem);
        if (i1 == mExpectedAdapterCount) goto _L6; else goto _L5
_L5:
        String s1 = getResources().getResourceName(getId());
        String s = s1;
_L7:
        throw new IllegalStateException((new StringBuilder("The application's WazePagerAdapter changed the adapter's contents without calling WazePagerAdapter#notifyDataSetChanged! Expected adapter item count: ")).append(mExpectedAdapterCount).append(", found: ").append(i1).append(" Pager id: ").append(s).append(" Pager class: ").append(getClass()).append(" Problematic adapter: ").append(mAdapter.getClass()).toString());
        android.content.res.Resources.NotFoundException notfoundexception;
        notfoundexception;
        s = Integer.toHexString(getId());
        if (true) goto _L7; else goto _L6
_L6:
        int k1 = 0;
_L20:
        ItemInfo iteminfo1;
        int i3;
        float f;
        int l3;
        ItemInfo iteminfo6;
        int i4;
        float f1;
        int j4;
        float f2;
        int j5;
        ItemInfo iteminfo7;
        float f3;
        int l5;
        int l1 = mItems.size();
        iteminfo1 = null;
        WazePagerAdapter wazepageradapter;
        int k2;
        int l2;
        View view1;
        int j3;
        int k3;
        View view2;
        ItemInfo iteminfo5;
        int k5;
        if (k1 < l1)
        {
label0:
            {
                ItemInfo iteminfo2 = (ItemInfo)mItems.get(k1);
                if (iteminfo2.position < mCurItem)
                {
                    break label0;
                }
                int i2 = iteminfo2.position;
                int j2 = mCurItem;
                iteminfo1 = null;
                if (i2 == j2)
                {
                    iteminfo1 = iteminfo2;
                }
            }
        }
        if (iteminfo1 == null && i1 > 0)
        {
            iteminfo1 = addNewItem(mCurItem, k1);
        }
        if (iteminfo1 == null) goto _L9; else goto _L8
_L8:
        f = 0.0F;
        l3 = k1 - 1;
        if (l3 >= 0)
        {
            iteminfo6 = (ItemInfo)mItems.get(l3);
        } else
        {
            iteminfo6 = null;
        }
        i4 = getClientWidth();
        if (i4 <= 0)
        {
            f1 = 0.0F;
        } else
        {
            f1 = (2.0F - iteminfo1.widthFactor) + (float)getPaddingLeft() / (float)i4;
        }
        j4 = -1 + mCurItem;
_L24:
        if (j4 >= 0) goto _L11; else goto _L10
_L10:
        f2 = iteminfo1.widthFactor;
        j5 = k1 + 1;
        if (f2 >= 2.0F) goto _L13; else goto _L12
_L12:
        k5 = mItems.size();
        int k4;
        int l4;
        int i5;
        WazePagerAdapter wazepageradapter1;
        Object obj1;
        if (j5 < k5)
        {
            iteminfo7 = (ItemInfo)mItems.get(j5);
        } else
        {
            iteminfo7 = null;
        }
        if (i4 <= 0)
        {
            f3 = 0.0F;
        } else
        {
            f3 = 2.0F + (float)getPaddingRight() / (float)i4;
        }
        l5 = 1 + mCurItem;
_L29:
        if (l5 < i1) goto _L14; else goto _L13
_L13:
        calculatePageOffsets(iteminfo1, k1, iteminfo);
_L9:
        wazepageradapter = mAdapter;
        k2 = mCurItem;
        Object obj;
        ItemInfo iteminfo8;
        int i6;
        int j6;
        int k6;
        int l6;
        WazePagerAdapter wazepageradapter2;
        Object obj2;
        int i7;
        if (iteminfo1 != null)
        {
            obj = iteminfo1.object;
        } else
        {
            obj = null;
        }
        wazepageradapter.setPrimaryItem(this, k2, obj);
        mAdapter.finishUpdate(this);
        l2 = getChildCount();
        i3 = 0;
_L31:
        if (i3 < l2)
        {
            break MISSING_BLOCK_LABEL_1198;
        }
        sortChildDrawingOrder();
        if (!hasFocus()) goto _L4; else goto _L15
_L15:
        view1 = findFocus();
        View view;
        LayoutParams layoutparams;
        ItemInfo iteminfo3;
        ItemInfo iteminfo4;
        if (view1 != null)
        {
            iteminfo4 = infoForAnyChild(view1);
        } else
        {
            iteminfo4 = null;
        }
        if (iteminfo4 != null && iteminfo4.position == mCurItem) goto _L4; else goto _L16
_L16:
        j3 = 0;
_L19:
        k3 = getChildCount();
        if (j3 >= k3) goto _L4; else goto _L17
_L17:
        view2 = getChildAt(j3);
        iteminfo5 = infoForChild(view2);
        if (iteminfo5 != null && iteminfo5.position == mCurItem && view2.requestFocus(byte0)) goto _L4; else goto _L18
_L18:
        j3++;
          goto _L19
        k1++;
          goto _L20
_L11:
        if (f < f1 || j4 >= l) goto _L22; else goto _L21
_L21:
        if (iteminfo6 == null) goto _L10; else goto _L23
_L23:
        i5 = iteminfo6.position;
        if (j4 == i5 && !iteminfo6.scrolling)
        {
            mItems.remove(l3);
            wazepageradapter1 = mAdapter;
            obj1 = iteminfo6.object;
            wazepageradapter1.destroyItem(this, j4, obj1);
            l3--;
            k1--;
            if (l3 >= 0)
            {
                iteminfo6 = (ItemInfo)mItems.get(l3);
            } else
            {
                iteminfo6 = null;
            }
        }
_L25:
        j4--;
          goto _L24
_L22:
label1:
        {
            if (iteminfo6 == null)
            {
                break label1;
            }
            l4 = iteminfo6.position;
            if (j4 != l4)
            {
                break label1;
            }
            f += iteminfo6.widthFactor;
            if (--l3 >= 0)
            {
                iteminfo6 = (ItemInfo)mItems.get(l3);
            } else
            {
                iteminfo6 = null;
            }
        }
          goto _L25
        k4 = l3 + 1;
        f += addNewItem(j4, k4).widthFactor;
        k1++;
        if (l3 >= 0)
        {
            iteminfo6 = (ItemInfo)mItems.get(l3);
        } else
        {
            iteminfo6 = null;
        }
          goto _L25
_L14:
        if (f2 < f3 || l5 <= j1) goto _L27; else goto _L26
_L26:
        if (iteminfo7 == null) goto _L13; else goto _L28
_L28:
        l6 = iteminfo7.position;
        if (l5 == l6 && !iteminfo7.scrolling)
        {
            mItems.remove(j5);
            wazepageradapter2 = mAdapter;
            obj2 = iteminfo7.object;
            wazepageradapter2.destroyItem(this, l5, obj2);
            i7 = mItems.size();
            if (j5 < i7)
            {
                iteminfo7 = (ItemInfo)mItems.get(j5);
            } else
            {
                iteminfo7 = null;
            }
        }
_L30:
        l5++;
          goto _L29
_L27:
label2:
        {
            if (iteminfo7 == null)
            {
                break label2;
            }
            j6 = iteminfo7.position;
            if (l5 != j6)
            {
                break label2;
            }
            f2 += iteminfo7.widthFactor;
            j5++;
            k6 = mItems.size();
            if (j5 < k6)
            {
                iteminfo7 = (ItemInfo)mItems.get(j5);
            } else
            {
                iteminfo7 = null;
            }
        }
          goto _L30
        iteminfo8 = addNewItem(l5, j5);
        j5++;
        f2 += iteminfo8.widthFactor;
        i6 = mItems.size();
        if (j5 < i6)
        {
            iteminfo7 = (ItemInfo)mItems.get(j5);
        } else
        {
            iteminfo7 = null;
        }
          goto _L30
        view = getChildAt(i3);
        layoutparams = (LayoutParams)view.getLayoutParams();
        layoutparams.childIndex = i3;
        if (!layoutparams.isDecor && layoutparams.widthFactor == 0.0F)
        {
            iteminfo3 = infoForChild(view);
            if (iteminfo3 != null)
            {
                layoutparams.widthFactor = iteminfo3.widthFactor;
                layoutparams.position = iteminfo3.position;
            }
        }
        i3++;
          goto _L31
    }

    public void removeView(View view)
    {
        if (mInLayout)
        {
            removeViewInLayout(view);
            return;
        } else
        {
            super.removeView(view);
            return;
        }
    }

    public void setAdapter(WazePagerAdapter wazepageradapter)
    {
        if (mAdapter == null) goto _L2; else goto _L1
_L1:
        int i;
        mAdapter.unregisterDataSetObserver(mObserver);
        mAdapter.startUpdate(this);
        i = 0;
_L6:
        if (i < mItems.size()) goto _L4; else goto _L3
_L3:
        mAdapter.finishUpdate(this);
        mItems.clear();
        removeNonDecorViews();
        mCurItem = 0;
        scrollTo(0, 0);
_L2:
        WazePagerAdapter wazepageradapter1 = mAdapter;
        mAdapter = wazepageradapter;
        mExpectedAdapterCount = 0;
        if (mAdapter != null)
        {
            if (mObserver == null)
            {
                mObserver = new PagerObserver(null);
            }
            mAdapter.registerDataSetObserver(mObserver);
            mPopulatePending = false;
            boolean flag = mFirstLayout;
            mFirstLayout = true;
            mExpectedAdapterCount = mAdapter.getCount();
            ItemInfo iteminfo;
            if (mRestoredCurItem >= 0)
            {
                mAdapter.restoreState(mRestoredAdapterState, mRestoredClassLoader);
                setCurrentItemInternal(mRestoredCurItem, false, true);
                mRestoredCurItem = -1;
                mRestoredAdapterState = null;
                mRestoredClassLoader = null;
            } else
            if (!flag)
            {
                populate();
            } else
            {
                requestLayout();
            }
        }
        if (mAdapterChangeListener != null && wazepageradapter1 != wazepageradapter)
        {
            mAdapterChangeListener.onAdapterChanged(wazepageradapter1, wazepageradapter);
        }
        return;
_L4:
        iteminfo = (ItemInfo)mItems.get(i);
        mAdapter.destroyItem(this, iteminfo.position, iteminfo.object);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    void setChildrenDrawingOrderEnabledCompat(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 7)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Method method;
        Object aobj[];
        if (mSetChildrenDrawingOrderEnabled == null)
        {
            try
            {
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                mSetChildrenDrawingOrderEnabled = android/view/ViewGroup.getDeclaredMethod("setChildrenDrawingOrderEnabled", aclass);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", nosuchmethodexception);
            }
        }
        method = mSetChildrenDrawingOrderEnabled;
        aobj = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        method.invoke(this, aobj);
        return;
        Exception exception;
        exception;
        Log.e("ViewPager", "Error changing children drawing order", exception);
        return;
    }

    public void setCurrentItem(int i)
    {
        mPopulatePending = false;
        boolean flag;
        if (mFirstLayout)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        setCurrentItemInternal(i, flag, false);
    }

    public void setCurrentItem(int i, boolean flag)
    {
        mPopulatePending = false;
        setCurrentItemInternal(i, flag, false);
    }

    void setCurrentItemInternal(int i, boolean flag, boolean flag1)
    {
        setCurrentItemInternal(i, flag, flag1, 0);
    }

    void setCurrentItemInternal(int i, boolean flag, boolean flag1, int j)
    {
        boolean flag2;
        int l;
        flag2 = true;
        if (mAdapter == null || mAdapter.getCount() <= 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!flag1 && mCurItem == i && mItems.size() != 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        int k;
        if (i < 0)
        {
            i = 0;
        } else
        if (i >= mAdapter.getCount())
        {
            i = -1 + mAdapter.getCount();
        }
        k = mOffscreenPageLimit;
        if (i <= k + mCurItem && i >= mCurItem - k) goto _L2; else goto _L1
_L1:
        l = 0;
_L5:
        if (l < mItems.size()) goto _L3; else goto _L2
_L2:
        if (mCurItem == i)
        {
            flag2 = false;
        }
        if (mFirstLayout)
        {
            mCurItem = i;
            if (flag2 && mOnPageChangeListener != null)
            {
                mOnPageChangeListener.onPageSelected(i);
            }
            if (flag2 && mInternalPageChangeListener != null)
            {
                mInternalPageChangeListener.onPageSelected(i);
            }
            requestLayout();
            return;
        } else
        {
            populate(i);
            scrollToItem(i, flag, j, flag2);
            return;
        }
_L3:
        ((ItemInfo)mItems.get(l)).scrolling = flag2;
        l++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener onpagechangelistener)
    {
        OnPageChangeListener onpagechangelistener1 = mInternalPageChangeListener;
        mInternalPageChangeListener = onpagechangelistener;
        return onpagechangelistener1;
    }

    public void setOffscreenPageLimit(int i)
    {
        if (i < 1)
        {
            Log.w("ViewPager", (new StringBuilder("Requested offscreen page limit ")).append(i).append(" too small; defaulting to ").append(1).toString());
            i = 1;
        }
        if (i != mOffscreenPageLimit)
        {
            mOffscreenPageLimit = i;
            populate();
        }
    }

    void setOnAdapterChangeListener(OnAdapterChangeListener onadapterchangelistener)
    {
        mAdapterChangeListener = onadapterchangelistener;
    }

    public void setOnPageChangeListener(OnPageChangeListener onpagechangelistener)
    {
        mOnPageChangeListener = onpagechangelistener;
    }

    public void setPageMargin(int i)
    {
        int j = mPageMargin;
        mPageMargin = i;
        int k = getWidth();
        recomputeScrollPosition(k, k, i, j);
        requestLayout();
    }

    public void setPageMarginDrawable(int i)
    {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public void setPageMarginDrawable(Drawable drawable)
    {
        mMarginDrawable = drawable;
        if (drawable != null)
        {
            refreshDrawableState();
        }
        boolean flag;
        if (drawable == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        invalidate();
    }

    public void setPageTransformer(boolean flag, PageTransformer pagetransformer)
    {
        int i = 1;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (pagetransformer != null)
        {
            flag1 = i;
        } else
        {
            flag1 = false;
        }
        if (mPageTransformer != null)
        {
            flag2 = i;
        } else
        {
            flag2 = false;
        }
        flag3 = flag1 ^ flag2;
        mPageTransformer = pagetransformer;
        setChildrenDrawingOrderEnabledCompat(flag1);
        if (flag1)
        {
            if (flag)
            {
                i = 2;
            }
            mDrawingOrder = i;
        } else
        {
            mDrawingOrder = 0;
        }
        if (flag3)
        {
            populate();
        }
    }

    void smoothScrollTo(int i, int j)
    {
        smoothScrollTo(i, j, 0);
    }

    void smoothScrollTo(int i, int j, int k)
    {
        if (getChildCount() == 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        int l = getScrollX();
        int i1 = getScrollY();
        int j1 = i - l;
        int k1 = j - i1;
        if (j1 == 0 && k1 == 0)
        {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int l1 = getClientWidth();
        int i2 = l1 / 2;
        float f = Math.min(1.0F, (1.0F * (float)Math.abs(j1)) / (float)l1);
        float f1 = (float)i2 + (float)i2 * distanceInfluenceForSnapDuration(f);
        int j2 = Math.abs(k);
        int k2;
        int l2;
        if (j2 > 0)
        {
            k2 = 4 * Math.round(1000F * Math.abs(f1 / (float)j2));
        } else
        {
            float f2 = (float)l1 * mAdapter.getPageWidth(mCurItem);
            k2 = (int)(100F * (1.0F + (float)Math.abs(j1) / (f2 + (float)mPageMargin)));
        }
        l2 = Math.min(k2, 600);
        mScroller.startScroll(l, i1, j1, k1, l2);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return super.verifyDrawable(drawable) || drawable == mMarginDrawable;
    }





}
